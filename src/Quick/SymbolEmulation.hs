-- | what to reuse optionally?
-- *1. tail call optimization
-- 2. register optimization
-- 3. symbol emulation
-- 4. block expression desugaring
-- partial order: 4 -> 2
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase       #-}
{-# LANGUAGE RankNTypes       #-}

module Quick.SymbolEmulation
  ( solveSymTb
  , SymTb(..)
  ) where

import           Control.Monad.State
import qualified Data.Map.Strict     as Map
import           Quick.SDDecl
import           Quick.St            (Status (..))

type N = String

newtype SymTb =
  SymTb
    { getSymTb :: Map.Map N Integer
    }

solveSymTb ::
     forall a tag. Status a SymTb
  => [SDDecl tag]
  -> State a ()
solveSymTb xs =
  forM_ xs $ \case
    SDDefFun _ _ x -> solveExp x
    SDDefCons n _ -> updateSymTb n

solveAlt ::
     forall a tag. Status a SymTb
  => SDAlt tag
  -> State a ()
solveAlt =
  \case
    SDConCase n _ _ -> updateSymTb n
    _ -> return ()

solveExp ::
     forall a tag. Status a SymTb
  => SDExp tag
  -> State a ()
solveExp =
  \case
    SDCons n _ -> updateSymTb n
    _ -> return ()

updateSymTb ::
     forall a tag. Status a SymTb
  => N
  -> State a ()
updateSymTb n = do
  SymTb s <- gets readStatus
  if n `Map.member` s
    then return ()
    else let cnt = Map.size s
          in modify $ writeStatus $ SymTb (Map.insert n (toInteger cnt) s)
