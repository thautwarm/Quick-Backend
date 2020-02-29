-- | desugaring block expressions
-- self-hosting RTS:
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

instance IsConst TT.Const where
  toDumpTree =
    \case
      TT.I i -> Leaf {litKind = Int, litStr = show i}
      TT.BI i -> Leaf {litKind = BigInt, litStr = show i}
      TT.Fl d -> Leaf {litKind = Float, litStr = show d}
      TT.Ch c -> Leaf {litKind = Char, litStr = [c]}
      TT.Str s -> Leaf {litKind = Str, litStr = s}
      s -> error $ "Not implemented constant:" ++ show s

type N = String

preDecl ::
     forall s a. IsScope s
  => [SDDecl a]
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
     forall s a. IsScope s
  => [SDDecl a]
  -> State s [WDecl]
lower decls = do
  preDecl decls
  error ""

lowerDecl ::
     forall s a l. (IsScope s, IsTagStore s l)
  => SDDecl a
  -> State s WDecl
lowerDecl =
  \case
    SDDefFun fn args body -> do
      fn <- require fn
      locally $ do
        args <- forM args enter
        (ret, stmts) <- lowerExp body
        let suite :: [WStmt a]
            suite = stmts ++ [WRet ret]
        return $ WDefFun fn args suite
    SDDefCons fn n -> do
      fn <- require fn
      locally $ do
        argnames <- replicateM n (gensym "constructor_arg")
        let ext = EF "make_tuple" $ map WVar argnames
            call = WExt ext
        return $ WDefFun fn argnames [WRet call]

lowerExpSeq ::
     forall s a l. (IsScope s, IsTagStore s l)
  => [SDExp a]
  -> State s ([WExp a], [WStmt a])
lowerExpSeq xs = do
  (es, stmts) <- unzip <$> forM xs lowerExp
  return (es, concat stmts)

lowerExp ::
     forall s a l. (IsScope s, IsTagStore s l)
  => SDExp a
  -> State s (WExp a, [WStmt a])
lowerExp =
  \case
    SDVar n -> do
      n <- require n
      return (WVar n, [])
    SDExt (EF fn xs) -> do
      (xs, stmts) <- lowerExpSeq xs
      return (WExt (EF fn xs), stmts)
    -- is recur
    SDApp _ f xs -> do
      f <- require f -- is this really necessary? As the IR is already lifted.
      (args, stmts) <- lowerExpSeq xs
      return (WApp f args, stmts)
    SDLet n boundVal body -> do
      (b, stmts1) <- lowerExp boundVal
      locally $ do
        n <- enter n
        (e, stmts2) <- lowerExp body
        return (e, stmts1 ++ (WIntro n : WUp n b : stmts2))
    SDUp n val -> do
      n <- require n
      (val, stmts) <- lowerExp val
      let expr = WVar n -- or WNone? this seems UB
      return (expr, stmts ++ [WUp n val])
    SDProj subj idx -> do
      (subj, xs) <- lowerExp subj
      let expr = WExt $ EF "proj" [subj, WC $ CC idx]
      return (expr, xs)
    -- specialized lowering
    SDCons "MkUnit" [] -> return (WNone, [])
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
      (exp, stmts2) <- caseCompile (WVar valToMatchN) (caseSplit alts)
      return (exp, stmts1 ++ [WIntro valToMatchN, WUp valToMatchN val] ++ stmts2)
    SDConst c -> return (WC (CC c), [])
    SDOp (primitiveFnName -> opFuncName) args -> do
      (args, stmts) <- lowerExpSeq args
      return (WExt $ EF opFuncName args, stmts)
    SDDoNothing -> return (WNone, [])
    SDError s -> return (WExt $ EF "error" [WC (CC s)], [])

-- | const case
data CaseSplit s =
  CaseSplit
    { ctorCases :: [(N, [N], SDExp s)]
    , enumCases :: [(N, SDExp s)]
    , constCases :: [(CC, SDExp s)]
    , defaultCase :: Maybe (SDExp s)
    }

caseSplit :: [SDAlt a] -> CaseSplit a
caseSplit xs = caseSplitImpl (CaseSplit [] [] [] Nothing) xs
  where
    caseSplitImpl cs =
      \case
        [] -> cs
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
     forall a s l. (IsTagStore s l, IsGenSym s, IsScope s)
  => WExp a
  -> CaseSplit a
  -> State s (WExp a, [WStmt a])
caseCompile valToMatch CaseSplit {defaultCase, enumCases, constCases, ctorCases} = do
  let defaultBr
        | Just defaultCase <- defaultCase = lowerExp defaultCase
        | otherwise = return (WNone, [WExp $ WExt $ EF "error" [WC $ CC "pattern matching failed"]])
  br <- defaultBr
  mergeRes <- gensym "caseMerged"
  br <- foldCtorCases mergeRes valToMatch br
  br <- foldConstCases mergeRes valToMatch br
  (exp, stmts) <- foldEnumCases mergeRes valToMatch br
  return (exp, WIntro mergeRes : stmts)
  where
    foldEnumCases ::
         (IsGenSym s, IsScope s, IsTagStore s l) => N -> WExp a -> (WExp a, [WStmt a]) -> State s (WExp a, [WStmt a])
    foldEnumCases
      | [] <- enumCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM enumCases $ \(n, body) -> do
              let tag = n `symConst` s
              (exp, stmts) <- locally $ lowerExp body
              return (CC tag, stmts ++ [WUp mergeRes exp])
          let switch = WSwitch valToMatch cases (defaultStmts ++ [WUp mergeRes defaultExp])
          return (WVar mergeRes, [switch])
    foldConstCases ::
         (IsGenSym s, IsScope s, IsTagStore s l) => N -> WExp a -> (WExp a, [WStmt a]) -> State s (WExp a, [WStmt a])
    foldConstCases
      | [] <- constCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM constCases $ \(c, body) -> do
              (exp, stmts) <- locally $ lowerExp body
              return (c, stmts ++ [WUp mergeRes exp])
          let switch = WSwitch valToMatch cases (defaultStmts ++ [WUp mergeRes defaultExp])
          return (WVar mergeRes, [switch])
    foldCtorCases ::
         (IsGenSym s, IsScope s, IsTagStore s l) => N -> WExp a -> (WExp a, [WStmt a]) -> State s (WExp a, [WStmt a])
    foldCtorCases
      | [] <- ctorCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM ctorCases $ \(n, binds, body) -> do
              let tag = n `symConst` s
                  idx :: N -> Int -> [WStmt a]
                  idx name i = [WIntro name, WUp name $ WExt $ EF "proj" [valToMatch, WC $ CC i]]
              (exp, stmts) <-
                locally $
                  -- index 0 is the tag, start from 1
                 do
                  binds <- forM (zip [1 ..] binds) $ \(i, bind) -> enter bind >>= \name -> return (idx name i)
                  (exp, stmts) <- lowerExp body
                  return (exp, concat binds ++ stmts)
              return (CC tag, stmts ++ [WUp mergeRes exp])
          let defaultStmts' = defaultStmts ++ [WUp mergeRes defaultExp]
              switch = WSwitch valToMatch cases defaultStmts'
              ifStmt = WIf (WExt $ EF "is_tuple" [valToMatch]) [switch] defaultStmts'
          return (WVar mergeRes, [ifStmt])

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
    Lang.LStrConcat -> "op_str"
    Lang.LStrLt -> "op_str"
    Lang.LStrEq -> "op_str"
    Lang.LStrLen -> "op_str"
    Lang.LIntFloat _ -> "op_int"
    Lang.LFloatInt _ -> "op_float"
    Lang.LIntStr _ -> "op_int"
    Lang.LStrInt _ -> "op_str"
    Lang.LFloatStr -> "op_float"
    Lang.LStrFloat -> "op_str"
    Lang.LChInt _ -> "op_ch"
    Lang.LIntCh _ -> "op_int"
    Lang.LBitCast _ _ -> "op_bit"
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
    Lang.LStrHead -> "op_str"
    Lang.LStrTail -> "op_str"
    Lang.LStrCons -> "op_str"
    Lang.LStrIndex -> "op_str"
    Lang.LStrRev -> "op_str"
    Lang.LStrSubstr -> "op_str"
    Lang.LReadStr -> "op_read"
    Lang.LWriteStr -> "op_write"
    Lang.LSystemInfo -> "op_system"
    Lang.LFork -> "op_fork"
    Lang.LPar -> "op_par"
    Lang.LExternal _ -> "op_external"
    Lang.LCrash -> "op_crash"
    Lang.LNoOp -> "op_no"