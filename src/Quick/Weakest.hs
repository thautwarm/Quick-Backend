{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
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

instance Dumpable WDecl where
  dump (WDefFun fname args stmts) =
    CtorNode {treeCons = "Defun", components = [dump fname, dumpList args, ListNode $ map dump stmts]}

instance Dumpable (WExp a) where
  dump = error ""

instance Dumpable (WStmt a) where
  dump =
    \case
      WIntro n -> CtorNode {treeCons = "Introduction", components = [dump n]}
      WUp n exp -> CtorNode {treeCons = "Update", components = [dump n, dump exp]}
      
