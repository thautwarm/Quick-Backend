{-# LANGUAGE DeriveFoldable            #-}
{-# LANGUAGE DeriveFunctor             #-}
{-# LANGUAGE DeriveTraversable         #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE MultiParamTypeClasses     #-}
{-# LANGUAGE NamedFieldPuns            #-}
{-# LANGUAGE PartialTypeSignatures     #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE ScopedTypeVariables       #-}
{-# LANGUAGE StandaloneDeriving        #-}
{-# LANGUAGE ViewPatterns              #-}

module Quick.SDDecl
  ( Ext(..)
  , SDExp(..)
  , SDAlt(..)
  , SDDecl(..)
  , sdDecl
  ) where

import           Idris.Core.TT
import           IRTS.CodegenCommon
import           IRTS.Defunctionalise
import           IRTS.Lang

type N = String

-- Idris has to distinguish values and thunks,
-- hence an external object needs
-- following representations.
data Ext a
  = EF N [a] -- call external functions
  | EV N -- access external variables
  deriving (Show, Ord, Eq, Functor, Foldable, Traversable)

-- | simplified DDecl
-- TODO: tail call support
data SDExp a
  = SDVar N
  | SDExt (Ext (SDExp a))
  | SDApp Bool N [SDExp a]
  | SDLet N (SDExp a) (SDExp a)
  | SDUp N (SDExp a)
  | SDProj (SDExp a) Int
  | SDCons N [SDExp a]
  | SDCase (SDExp a) [SDAlt a]
  | SDConst Const
  | SDOp PrimFn [SDExp a]
  | SDDoNothing
  | SDError String
  deriving (Functor, Foldable, Traversable)

data SDAlt a
  = SDConCase N [N] (SDExp a)
  | SDConstCase Const (SDExp a)
  | SDDefaultCase (SDExp a)
  deriving (Functor, Foldable, Traversable)

data SDDecl a
  = SDDefFun N [N] (SDExp a)
  | SDDefCons N Int
  deriving (Functor, Foldable, Traversable)

--specify :: N -> Maybe SDExp
--specify "MkUnit"             = Just SDDoNothing
--specify "Prelude.Bool.True"  = Just (SDExt $ EV "True")
--specify "Prelude.Bool.False" = Just (SDExt $ EV "False")
--specify _                    = Nothing
sdAlt :: DAlt -> SDAlt a
sdAlt =
  \case
    DConCase _ (showCG -> target) (map showCG -> binds) (sdExp -> body) -> SDConCase target binds body
    DConstCase const (sdExp -> body) -> SDConstCase const body
    DDefaultCase (sdExp -> body) -> SDDefaultCase body

sdExp :: DExp -> SDExp a
sdExp =
  \case
    DV (showCG -> name) -> SDVar name
    DApp isTailCall (showCG -> name) (map sdExp -> args) -> SDApp isTailCall name args
    DLet (showCG -> name) (sdExp -> v) (sdExp -> body) -> SDLet name v body
    DUpdate (showCG -> name) (sdExp -> body) -> SDUp name body
    DC _ _ (showCG -> name) (map sdExp -> args) -> SDCons name args
    DCase _ (sdExp -> target) (map sdAlt -> alts) -> SDCase target alts
    DChkCase (sdExp -> target) (map sdAlt -> alts) -> SDCase target alts
    DProj (sdExp -> var) i -> SDProj var i
    DConst const -> SDConst const
    DOp primfn (map sdExp -> vars) -> SDOp primfn vars
    DNothing -> SDDoNothing
    DError s -> SDError s
    DForeign _ fname (map (sdExp . snd) -> xs) ->
      case fname of
        FApp n [FStr name]
          | show n == "FVar" ->
            if null xs
              then SDExt (EV name)
              else error $ "Accessing foreign variable " ++ name ++ "requires no function arguments."
        FApp n [FStr name]
          | show n == "FFunc" -> SDExt (EF name xs)
        _ -> error $ "Not supported FFI ops :" ++ show fname

sdDecl :: DDecl -> SDDecl a
sdDecl =
  \case
    DFun (showCG -> fname) (map showCG -> args) (sdExp -> body) -> SDDefFun fname args body
    DConstructor (showCG -> ctorName) _ ary -> SDDefCons ctorName ary
