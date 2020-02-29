{-# LANGUAGE OverlappingInstances #-}

-- constructor: tag NEWLINEW n-ary NEWLINEW ary1 NEWLINEW ary2 NEWLINEW ary3 ...
-- literal: "literal" SPACE kind SPACE n-length SPACE char1...charn
--   literal kind could be "int", "float", "char", "string", "bigInt", so far
module Quick.Dump where

import Data.List (intercalate)

joinLines = intercalate "\n"

data LitKind
  = Float
  | Int
  | Char
  | Str
  | BigInt
  | Symbol
  | Boolean
  | Unit

data DumpTree
  = CtorNode
      { treeCons :: String
      , components :: [DumpTree]
      }
  | Leaf
      { litKind :: LitKind
      , litStr :: String
      }
  | ListNode [DumpTree]

dumpKind =
  \case
    Float -> "float"
    Int -> "int"
    Char -> "char"
    Str -> "string"
    BigInt -> "bigInt"
    Symbol -> "symbol"
    Boolean -> "bool"
    Unit -> "unit"

serialize :: DumpTree -> String
serialize =
  \case
    CtorNode cons comp ->
      let n = length comp
       in joinLines $ unwords ["constructor", cons, show n] : map serialize comp
    Leaf kind str ->
      let n = length str
       in joinLines [unwords ["literal", dumpKind kind, show n], str]
    ListNode xs ->
      let n = length xs
       in joinLines $ unwords ["list", show n] : map serialize xs

class Dumpable a where
  dump :: a -> DumpTree

instance Dumpable DumpTree where
  dump l = l

instance Dumpable Integer where
  dump i = Leaf {litKind = Int, litStr = show i}

instance Dumpable Int where
  dump i = Leaf {litKind = Int, litStr = show i}

instance Dumpable Bool where
  dump i =
    Leaf
      { litKind = Boolean
      , litStr =
          if i
            then "1"
            else "0"
      }

instance Dumpable () where
  dump _ = Leaf {litKind = Unit, litStr = ""}

instance Dumpable String where
  dump s = Leaf {litKind = Str, litStr = s}

instance Dumpable a => Dumpable [a] where
  dump = dumpList

dumpList xs = ListNode $ map dump xs

instance (Dumpable a, Dumpable b) => Dumpable (a, b) where
  dump (a, b) = ListNode [dump a, dump b]