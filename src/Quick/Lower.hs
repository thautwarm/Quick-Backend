-- | desugaring block expressions
-- self-hosting RTS:
-- 1. `make_tuple`
-- 2. ``
{-# LANGUAGE DataKinds  #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE RankNTypes #-}

module Quick.Lower where

import           Control.Monad.State
import           Quick.SDDecl
import           Quick.St
import           Quick.Weakest

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
     forall s a. IsScope s
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
     forall s a. IsScope s
  => [SDExp a]
  -> State s ([WExp 'IsRecur], [WStmt 'IsRecur])
lowerExpSeq xs = do
  (es, stmts) <- unzip <$> forM xs lowerExp
  return (es, concat stmts)

lowerExp ::
     forall s a. IsScope s
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
        return (e, stmts1 ++ (WUp n b : stmts2))
    SDUp n val -> do
      n <- require n
      (val, stmts) <- lowerExp val
      let expr = WVar n -- or WNone? this seems UB
      return (expr, stmts ++ [WUp n val])
    SDProj subj idx -> do
      (subj, xs) <- lowerExp subj
      let expr = WExt $ EF "proj" [subj, WC idx]
      return (expr, xs)
