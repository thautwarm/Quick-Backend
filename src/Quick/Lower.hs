-- | desugaring block expressions
-- self-hosting RTS:
-- 1. `make_tuple`
-- 2. ``
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Quick.Lower where

import Control.Arrow
import Control.Monad.State
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
  -> State s [WDecl 'IsRecur]
lower decls = do
  preDecl decls
  error ""

lowerDecl ::
     forall s a l. (IsScope s, IsTagStore s l)
  => SDDecl a
  -> State s (WDecl 'IsRecur)
lowerDecl =
  \case
    SDDefFun fn args body -> do
      fn <- require fn
      locally $ do
        args <- forM args enter
        (ret, stmts) <- lowerExp body
        let suite :: [WStmt 'IsRecur]
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
  -> State s ([WExp 'IsRecur], [WStmt 'IsRecur])
lowerExpSeq xs = do
  (es, stmts) <- unzip <$> forM xs lowerExp
  return (es, concat stmts)

lowerExp ::
     forall s a l. (IsScope s, IsTagStore s l)
  => SDExp a
  -> State s (WExp 'IsRecur, [WStmt 'IsRecur])
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
      let expr = WExt $ EF "proj" [subj, WC idx]
      return (expr, xs)
    -- specialized lowering
    SDCons "MkUnit" [] -> return (WNone, [])
    SDCons "Prelude.Bool.True" [] -> return (WC True, [])
    SDCons "Prelude.Bool.False" [] -> return (WC False, [])
    SDCons a [] -> do
      s <- get
      let sym = symConst a s
      return (WC sym, [])
    SDCons a components -> do
      s <- get
      let tag = symConst a s
      (components, stmts) <- lowerExpSeq components
      return (WExt (EF "make_tuple" $ WC tag : components), stmts)
    SDCase val alts ->
      let reduce b xs f = foldM f b xs
       in do (val, stmts1) <- lowerExp val
             let CaseSplit {defaultCase, constCases, enumCases, ctorCases} = caseSplit alts
             error ""

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
          case x of
            SDConCase tag [] exp -> cs {enumCases = (tag, exp) : enumCases cs}
            SDConCase tag args exp -> cs {ctorCases = (tag, args, exp) : ctorCases cs}
            SDConstCase c exp -> cs {constCases = (CC c, exp) : constCases cs}
            SDDefaultCase exp -> cs {defaultCase = Just exp}

caseCompile ::
     (IsTagStore s l, IsGenSym s, IsScope s)
  => WExp 'IsRecur
  -> CaseSplit a
  -> State s (WExp 'IsRecur, [WStmt 'IsRecur])
caseCompile valToMatch CaseSplit {defaultCase, enumCases, constCases, ctorCases} = do
  let defaultBr
        | Just defaultCase <- defaultCase = lowerExp defaultCase
        | otherwise = return (WNone, [WExp $ WExt $ EF "error" [WC "pattern matching failed"]])
  br <- defaultBr
  mergeRes <- gensym "caseMerged"
  br <- foldConstCases mergeRes valToMatch br
  br <- foldEnumCases mergeRes valToMatch br
  foldCtorCases mergeRes valToMatch br
  where
    foldEnumCases ::
         (IsGenSym s, IsScope s, IsTagStore s l)
      => N
      -> WExp 'IsRecur
      -> (WExp 'IsRecur, [WStmt 'IsRecur])
      -> State s (WExp 'IsRecur, [WStmt 'IsRecur])
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
         (IsGenSym s, IsScope s, IsTagStore s l)
      => N
      -> WExp 'IsRecur
      -> (WExp 'IsRecur, [WStmt 'IsRecur])
      -> State s (WExp 'IsRecur, [WStmt 'IsRecur])
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
         (IsGenSym s, IsScope s, IsTagStore s l)
      => N
      -> WExp 'IsRecur
      -> (WExp 'IsRecur, [WStmt 'IsRecur])
      -> State s (WExp 'IsRecur, [WStmt 'IsRecur])
    foldCtorCases
      | [] <- ctorCases = const (const return)
      | otherwise =
        \mergeRes valToMatch (defaultExp, defaultStmts) -> do
          s <- get
          cases <-
            forM ctorCases $ \(n, binds, body) -> do
              let tag = n `symConst` s
                  idx :: N -> Int -> [WStmt 'IsRecur]
                  idx name i = [WIntro name, WUp name $ WExt $ EF "proj" [valToMatch, WC i]]
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
