{-# LANGUAGE FunctionalDependencies #-}

module Quick.St where

import Control.Monad.State

type N = String

class IsGenSym s
  -- generate unique names
  where
  gensym :: N -> State s N

class IsGenSym s =>
      IsScope s
  -- enter user defined variables, and get the generated symbol
  where
  enter :: N -> State s N
  -- ask the generated symbol from a user defined variables
  require :: N -> State s N
  -- without changing outer scope
  locally :: State s a -> State s a

class Status s a | s -> a where
  readStatus :: s -> a
  writeStatus :: a -> s -> s