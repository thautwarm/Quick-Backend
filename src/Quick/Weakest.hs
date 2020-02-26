{-# LANGUAGE DataKinds                 #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE FunctionalDependencies    #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE KindSignatures            #-}
{-# LANGUAGE MultiParamTypeClasses     #-}
{-# LANGUAGE NamedFieldPuns            #-}
{-# LANGUAGE PartialTypeSignatures     #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE ScopedTypeVariables       #-}

module Quick.Weakest
  ( IsConst(..)
  , WDecl(..)
  , WStmt(..)
  , WExp(..)
  , Fix(..)
  , Prop(..)
  ) where

import           Quick.Dump
import           Quick.SDDecl (Ext (..))
import           Text.Printf  (printf)

class IsConst a where
  toDumpTree :: a -> DumpTree

instance IsConst Int where
  toDumpTree i = Leaf {litKind = Int, litStr = show i}

type N = String

data WDecl form where
  WDefFun :: N -> [N] -> [WStmt form] -> WDecl form
  WTop :: WStmt form -> WDecl form

data Prop
  = IsANF
  | IsRecur

data WStmt (form :: Prop) where
  WUp :: N -> WExp form -> WStmt form
  WSwitch
    :: forall c form. IsConst c
    => WExp form
    -> [(c, [WStmt form])]
    -> WStmt form
  WIf :: WExp form -> [WStmt form] -> [WStmt form] -> WStmt form
  WExp :: WExp form -> WStmt form
  WRet :: WExp form -> WStmt form

data WExp tag where
  WNone :: WExp tag
  WVar :: N -> WExp tag
  WExt :: Ext (WExp tag) -> WExp tag
  WC
    :: forall c tag. IsConst c
    => c
    -> WExp tag
  WApp :: N -> [WExp tag] -> WExp IsRecur

newtype Fix f =
  Box
    { unbox :: f (Fix f)
    }
