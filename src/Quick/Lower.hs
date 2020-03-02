-- | desugaring block expressions
-- self-hosting RTS:
-- 0. `in0`: stdout
-- 1. `make_tuple`
-- 2. `error`
-- 3. `is_tuple`
-- 4. `op_*`, see function `primitiveFnName`
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Quick.Lower where

import Control.Arrow
import Control.Monad.State
import qualified IRTS.Lang as Lang
import qualified Idris.Core.TT as TT
import Quick.Dump
import Quick.SDDecl
import Quick.St
import Quick.Weakest

instance Dumpable TT.Const where
  dump =
    \case
      TT.I i -> Leaf {litKind = Int, litStr = show i}
      TT.BI i -> Leaf {litKind = BigInt, litStr = show i}
      TT.Fl d -> Leaf {litKind = Float, litStr = show d}
      TT.Ch c -> Leaf {litKind = Char, litStr = [c]}
      TT.Str s -> Leaf {litKind = Str, litStr = s}
      s -> error $ "Not implemented constant:" ++ show s

instance IsConst TT.Const

type N = String

preDecl ::
     forall s. IsScope s
  => [SDDecl N]
  -> State s ()
preDecl [] = return ()
preDecl (x:xs) = do
  enter n
  preDecl xs
  where
    n
      | SDDefFun fn _ _ <- x = fn
      | SDDefCons fn _ <- x = fn

lower ::
     forall s l. (IsScope s, IsTagStore s l)
  => [SDDecl N]
  -> State s [WDecl DefUse]
lower decls = do
  preDecl decls
  decls <- forM decls lowerDecl
  n <- require "{runMain_0}"
  return $ decls ++ [WTop $ WExp $ WApp (Use n) []]

lowerDecl ::
     forall s l. (IsScope s, IsTagStore s l)
  => SDDecl N
  -> State s (WDecl DefUse)
lowerDecl =
  \case
    SDDefFun fn args body -> do
      fn <- require fn
      locally $ do
        args <- forM args enter
        (ret, stmts) <- lowerExp body
        let suite :: [WStmt DefUse]
            suite = stmts ++ [WRet ret]
        return $ WDefFun (Def fn) (map Def args) suite
    SDDefCons fn 0 -> do
      s <- get
      let tag = WC $ CC (fn `symConst` s)
      fn <- require fn
      locally $ return $ WDefFun (Def fn) [] [WRet tag]
    SDDefCons fn n -> do
      s <- get
      let tag = WC $ CC (fn `symConst` s)
      fn <- require fn
      locally $ do
        argnames <- replicateM n (gensym "constructor_arg")
        let ext = EF "make_tuple" $ tag : map (WVar . Use) argnames
            call = WExt ext
        return $ WDefFun (Def fn) (map Use argnames) [WRet call]

lowerExpSeq ::
     forall s a l. (IsScope s, IsTagStore s l)
  => [SDExp N]
  -> State s ([WExp DefUse], [WStmt DefUse])
lowerExpSeq xs = do
  (es, stmts) <- unzip <$> forM xs lowerExp
  return (es, concat stmts)

lowerExp ::
     forall s a l. (IsScope s, IsTagStore s l)
  => SDExp N
  -> State s (WExp DefUse, [WStmt DefUse])
lowerExp =
  \case
    SDVar n -> do
      n <- require n
      return (WVar $ Use n, [])
    SDExt (EF fn xs) -> do
      (xs, stmts) <- lowerExpSeq xs
      return (WExt (EF fn xs), stmts)
    -- is recur
    SDApp _ f xs -> do
      f <- require f -- is this really necessary? As the IR is already lifted.
      (args, stmts) <- lowerExpSeq xs
      return (WApp (Use f) args, stmts)
    SDLet n boundVal body -> do
      (b, stmts1) <- lowerExp boundVal
      locally $ do
        n <- enter n
        (e, stmts2) <- lowerExp body
        return (e, stmts1 ++ (WIntro (Def n) : WUp (Use n) b : stmts2))
    SDUp n val -> do
      n <- require n
      (val, stmts) <- lowerExp val
      let expr = WVar (Use n) -- or wnone? this seems UB
      return (expr, stmts ++ [WUp (Use n) val])
    SDProj subj idx -> do
      (subj, xs) <- lowerExp subj
      let expr = WExt $ EF "proj" [subj, WC $ CC idx]
      return (expr, xs)
    -- specialized lowering
    SDCons "MkUnit" [] -> return (wnone, [])
    SDCons "Prelude.Bool.True" [] -> return (WC $ CC True, [])
    SDCons "Prelude.Bool.False" [] -> return (WC $ CC False, [])
    SDCons a [] -> do
      s <- get
      let sym = symConst a s
      return (WC $ CC sym, [])
    SDCons a components -> do
      s <- get
      let tag = symConst a s
      (components, stmts) <- lowerExpSeq components
      return (WExt (EF "make_tuple" $ WC (CC tag) : components), stmts)
    SDCase val alts -> do
      (val, stmts1) <- lowerExp val
      valToMatchN <- gensym "valToMatch"
      (exp, stmts2) <- caseCompile ((WVar . Use) valToMatchN) (caseSplit alts)
      return (exp, stmts1 ++ [WIntro (Def valToMatchN), WUp (Use valToMatchN) val] ++ stmts2)
    SDConst c -> return (WC (CC c), [])
    SDOp (primitiveFnName -> opFuncName) args -> do
      (args, stmts) <- lowerExpSeq args
      return (WExt $ EF opFuncName args, stmts)
    SDDoNothing -> return (wnone, [])
    SDError s -> return (WExt $ EF "error" [WC (CC s)], [])

-- | const case
data CaseSplit =
  CaseSplit
    { ctorCases :: [(N, [N], SDExp N)]
    , enumCases :: [(N, SDExp N)]
    , constCases :: [(CC, SDExp N)]
    , defaultCase :: Maybe (SDExp N)
    }

caseSplit :: forall a. [SDAlt N] -> CaseSplit
caseSplit xs = caseSplitImpl (CaseSplit [] [] [] Nothing) xs
  where
    caseSplitImpl cs =
      \case
        [] ->
          let CaseSplit {constCases = (reverse -> a'), enumCases = (reverse -> b'), ctorCases = (reverse -> c')} = cs
           in cs {constCases = a', enumCases = b', ctorCases = c'}
        x:xs ->
          flip caseSplitImpl xs $
          case x
            -- specialize
                of
            SDConCase "MkUnit" [] exp -> cs {constCases = (CC (), exp) : constCases cs}
            SDConCase "Prelude.Bool.True" [] exp -> cs {constCases = (CC True, exp) : constCases cs}
            SDConCase "Prelude.Bool.False" [] exp -> cs {constCases = (CC False, exp) : constCases cs}
            --
            SDConCase tag [] exp -> cs {enumCases = (tag, exp) : enumCases cs}
            SDConCase tag args exp -> cs {ctorCases = (tag, args, exp) : ctorCases cs}
            SDConstCase c exp -> cs {constCases = (CC c, exp) : constCases cs}
            SDDefaultCase exp -> cs {defaultCase = Just exp}

caseCompile ::
     forall s l. (IsTagStore s l, IsGenSym s, IsScope s)
  => WExp DefUse
  -> CaseSplit
  -> State s (WExp DefUse, [WStmt DefUse])
caseCompile valToMatch CaseSplit {defaultCase, enumCases, constCases, ctorCases} = do
  let defaultBr
        | Just defaultCase <- defaultCase = lowerExp defaultCase
        | otherwise = return (wnone, [WExp $ WExt $ EF "error" [WC $ CC "pattern matching failed"]])
  br <- defaultBr
  mergeRes <- gensym "caseMerged"
  br <- foldCtorCases mergeRes valToMatch br
  br <- foldConstCases mergeRes valToMatch br
  (exp, stmts) <- foldEnumCases mergeRes valToMatch br
  return (exp, WIntro (Def mergeRes) : stmts)
  where
    foldEnumCases ::
         (IsGenSym s, IsScope s, IsTagStore s l) => N -> WExp _ -> (WExp _, [WStmt _]) -> State s (WExp _, [WStmt _])
    foldEnumCases
      | [] <- enumCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM enumCases $ \(n, body) -> do
              let tag = n `symConst` s
              (exp, stmts) <- locally $ lowerExp body
              return (CC tag, stmts ++ [WUp (Use mergeRes) exp])
          let switch = WSwitch valToMatch cases (defaultStmts ++ [WUp (Use mergeRes) defaultExp])
          return (WVar (Use mergeRes), [switch])
    foldConstCases ::
         (IsGenSym s, IsScope s, IsTagStore s l) => N -> WExp _ -> (WExp _, [WStmt _]) -> State s (WExp _, [WStmt _])
    foldConstCases
      | [] <- constCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM constCases $ \(c, body) -> do
              (exp, stmts) <- locally $ lowerExp body
              return (c, stmts ++ [WUp (Use mergeRes) exp])
          let switch = WSwitch valToMatch cases (defaultStmts ++ [WUp (Use mergeRes) defaultExp])
          return (WVar (Use mergeRes), [switch])
    foldCtorCases ::
         (IsGenSym s, IsScope s, IsTagStore s l) => N -> WExp _ -> (WExp _, [WStmt _]) -> State s (WExp _, [WStmt _])
    foldCtorCases
      | [] <- ctorCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM ctorCases $ \(n, binds, body) -> do
              let tag = n `symConst` s
                  idx :: N -> Int -> [WStmt DefUse]
                  idx name i = [WIntro (Def name), WUp (Use name) $ WExt $ EF "proj" [valToMatch, WC $ CC i]]
              (exp, stmts) <-
                locally $
                  -- index 0 is the tag, start from 1
                 do
                  binds <- forM (zip [1 ..] binds) $ \(i, bind) -> enter bind >>= \name -> return (idx name i)
                  (exp, stmts) <- lowerExp body
                  return (exp, concat binds ++ stmts)
              return (CC tag, stmts ++ [WUp (Use mergeRes) exp])
          let defaultStmts' = defaultStmts ++ [WUp (Use mergeRes) defaultExp]
              switch = WSwitch (WExt $ EF "proj" [valToMatch, WC (CC (0 :: Int))]) cases defaultStmts'
              ifStmt = WIf (WExt $ EF "is_tuple" [valToMatch]) [switch] defaultStmts'
          return (WVar (Use mergeRes), [ifStmt])

-- | auto generated by tools/prim-fn-gen.py
primitiveFnName =
  \case
    Lang.LPlus _ -> "op_plus"
    Lang.LMinus _ -> "op_minus"
    Lang.LTimes _ -> "op_times"
    Lang.LUDiv _ -> "op_udiv"
    Lang.LSDiv _ -> "op_sdiv"
    Lang.LURem _ -> "op_urem"
    Lang.LSRem _ -> "op_srem"
    Lang.LAnd _ -> "op_and"
    Lang.LOr _ -> "op_or"
    Lang.LXOr _ -> "op_xor"
    Lang.LCompl _ -> "op_compl"
    Lang.LSHL _ -> "op_shl"
    Lang.LLSHR _ -> "op_lshr"
    Lang.LASHR _ -> "op_ashr"
    Lang.LEq _ -> "op_eq"
    Lang.LLt _ -> "op_lt"
    Lang.LLe _ -> "op_le"
    Lang.LGt _ -> "op_gt"
    Lang.LGe _ -> "op_ge"
    Lang.LSLt _ -> "op_slt"
    Lang.LSLe _ -> "op_sle"
    Lang.LSGt _ -> "op_sgt"
    Lang.LSGe _ -> "op_sge"
    Lang.LSExt _ _ -> "op_sext"
    Lang.LZExt _ _ -> "op_zext"
    Lang.LTrunc _ _ -> "op_trunc"
    Lang.LStrConcat -> "op_str_concat"
    Lang.LStrLt -> "op_str_lt"
    Lang.LStrEq -> "op_str_eq"
    Lang.LStrLen -> "op_str_len"
    Lang.LIntFloat _ -> "op_int_float"
    Lang.LFloatInt _ -> "op_float_int"
    Lang.LIntStr _ -> "op_int_str"
    Lang.LStrInt _ -> "op_str_int"
    Lang.LFloatStr -> "op_float_str"
    Lang.LStrFloat -> "op_str_float"
    Lang.LChInt _ -> "op_ch_int"
    Lang.LIntCh _ -> "op_int_ch"
    Lang.LBitCast _ _ -> "op_bit_cast"
    Lang.LFExp -> "op_fexp"
    Lang.LFLog -> "op_flog"
    Lang.LFSin -> "op_fsin"
    Lang.LFCos -> "op_fcos"
    Lang.LFTan -> "op_ftan"
    Lang.LFASin -> "op_fasin"
    Lang.LFACos -> "op_facos"
    Lang.LFATan -> "op_fatan"
    Lang.LFATan2 -> "op_fatan"
    Lang.LFSqrt -> "op_fsqrt"
    Lang.LFFloor -> "op_ffloor"
    Lang.LFCeil -> "op_fceil"
    Lang.LFNegate -> "op_fnegate"
    Lang.LStrHead -> "op_str_head"
    Lang.LStrTail -> "op_str_tail"
    Lang.LStrCons -> "op_str_cons"
    Lang.LStrIndex -> "op_str_index"
    Lang.LStrRev -> "op_str_rev"
    Lang.LStrSubstr -> "op_str_substr"
    Lang.LReadStr -> "op_read_str"
    Lang.LWriteStr -> "op_write_str"
    Lang.LSystemInfo -> "op_system_info"
    Lang.LFork -> "op_fork"
    Lang.LPar -> "op_par"
    Lang.LExternal _ -> "op_external"
    Lang.LCrash -> "op_crash"
    Lang.LNoOp -> "op_no_op"