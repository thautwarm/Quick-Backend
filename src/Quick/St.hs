{-# LANGUAGE FunctionalDependencies #-}

module Quick.St
  ( IsGenSym(..)
  , Status(..)
  , IsConst(..)
  , IsScope(..)
  , IsTagStore(..)
  , CC(..)
  ) where

import Control.Monad.State
import Quick.Dump

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

class IsConst a where
  toDumpTree :: a -> DumpTree

instance IsConst Int where
  toDumpTree i = Leaf {litKind = Int, litStr = show i}

instance IsConst Bool where
  toDumpTree i =
    Leaf
      { litKind = Boolean
      , litStr =
          if i
            then "1"
            else "0"
      }

instance IsConst String where
  toDumpTree s = Leaf {litKind = Str, litStr = s}

-- accessing a mapping from tag name to symbol constant
-- The symbol constant is either an integer in a language without native Symbol type,
-- or a native symbol in a LISP-like language.
class IsConst l =>
      IsTagStore s l
  | s -> l
  where
  symConst :: N -> s -> l

data CC =
  forall c. IsConst c =>
            CC c

instance IsConst CC where
  toDumpTree (CC c) = toDumpTree c