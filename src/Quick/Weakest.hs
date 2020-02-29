{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Quick.Weakest
  ( IsConst(..)
  , WDecl(..)
  , WStmt(..)
  , WExp(..)
  , Fix(..)
  , Prop(..)
  , dumpWDecls
  ) where

import Quick.Dump
import Quick.SDDecl (Ext(..))
import Quick.St

import Text.Printf (printf)

type N = String

data WDecl where
  WDefFun :: N -> [N] -> [WStmt a] -> WDecl

data Prop
  = IsANF
  | IsRecur

data WStmt a
  -- introduction of some variables
      where
  WIntro :: N -> WStmt a
  WUp :: N -> WExp a -> WStmt a
  WSwitch :: WExp a -> [(CC, [WStmt a])] -> [WStmt a] -> WStmt a
  WIf :: WExp a -> [WStmt a] -> [WStmt a] -> WStmt a
  WExp :: WExp a -> WStmt a
  WRet :: WExp a -> WStmt a
  deriving (Functor, Foldable, Traversable)

data WExp a where
  WNone :: WExp a
  WVar :: N -> WExp a
  WExt :: Ext (WExp a) -> WExp a
  WC :: CC -> WExp a
  WApp :: N -> [WExp a] -> WExp a
  deriving (Functor, Foldable, Traversable)

newtype Fix f =
  Box
    { unbox :: f (Fix f)
    }

dumpWDecls :: [WDecl] -> DumpTree
dumpWDecls (ListNode . map dump -> res) = res

instance Dumpable a => Dumpable (Ext a) where
  dump (EF fname xs) = CtorNode {treeCons = "ExternalCall", components = [dump fname, dump xs]}
  dump (EV name) = CtorNode {treeCons = "ExternalVariable", components = [dump name]}

instance Dumpable WDecl where
  dump (WDefFun fname args stmts) =
    CtorNode {treeCons = "Defun", components = [dump fname, dumpList args, ListNode $ map dump stmts]}

instance Dumpable (WExp a) where
  dump =
    \case
      WNone -> dump ()
      WVar n -> CtorNode {treeCons = "Var", components = [dump n]}
      WExt ext -> dump ext
      WC cc -> dump cc
      WApp name (dumpList -> args) -> CtorNode {treeCons = "Call", components = [dump name, args]}

instance Dumpable (WStmt a) where
  dump =
    \case
      WIntro n -> CtorNode {treeCons = "Introduction", components = [dump n]}
      WUp n exp -> CtorNode {treeCons = "Update", components = [dump n, dump exp]}
      WSwitch a xs b -> CtorNode {treeCons = "Switch", components = [dump a, dumpList xs, dump b]}
      WIf (dump -> cond) (dump -> trueClause) (dump -> falseClause) ->
        CtorNode {treeCons = "If", components = [cond, trueClause, falseClause]}
      WExp (dump -> exp) -> CtorNode {treeCons = "EffectExpr", components = [exp]}
      WRet (dump -> exp) -> CtorNode {treeCons = "Return", components = [exp]}