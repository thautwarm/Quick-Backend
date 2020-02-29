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
import           Quick.Row
import           Quick.SDDecl
import           Quick.St            (Status (..))

type N = String

type SymTb = Map.Map N Integer

solveSymTb ::
     forall a. Field a Me SymTb
  => [SDDecl N]
  -> State a ()
solveSymTb xs = forM_ xs $ \x -> traverse updateSymTb x

updateSymTb ::
     forall a tag. Field a Me SymTb
  => N
  -> State a ()
updateSymTb n = do
  s <- gets (.: Me)
  if n `Map.member` s
    then return ()
    else let cnt = Map.size s
          in modify $ Me .-> Map.insert n (toInteger cnt)
