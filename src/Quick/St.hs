{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE UndecidableInstances #-}

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

class Dumpable a =>
      IsConst a


instance Dumpable Int where
  dump i = Leaf {litKind = Int, litStr = show i}

instance IsConst Int

instance Dumpable Integer where
  dump i = Leaf {litKind = Int, litStr = show i}

instance IsConst Integer

instance Dumpable Bool where
  dump i =
    Leaf
      { litKind = Boolean
      , litStr =
          if i
            then "1"
            else "0"
      }

instance IsConst Bool

instance Dumpable String where
  dump s = Leaf {litKind = Str, litStr = s}

instance IsConst String

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

instance Dumpable CC where
  dump (CC c) = dump c

instance IsConst CC

instance Dumpable () where
  dump _ = Leaf {litKind = Unit, litStr = ""}

instance IsConst ()

instance Dumpable DumpTree where
  dump l = l

instance IsConst DumpTree