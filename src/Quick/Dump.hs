-- constructor: tag NEWLINEW n-ary NEWLINEW ary1 NEWLINEW ary2 NEWLINEW ary3 ...
-- literal: "literal" SPACE kind SPACE n-length SPACE char1...charn
--   literal kind could be "int", "float", "char", "string", "bigInt", so far
module Quick.Dump where

data LitKind
  = Float
  | Int
  | Char
  | Str
  | BigInt
  | Symbol
  | Boolean

data DumpTree
  = Tree
      { treeCons :: String
      , components :: [DumpTree]
      }
  | Leaf
      { litKind :: LitKind
      , litStr :: String
      }

dumpKind =
  \case
    Float -> "float"
    Int -> "int"
    Char -> "char"
    Str -> "string"
    BigInt -> "bigInt"
    Symbol -> "symbol"
    Boolean -> "bool"

dumpTree :: DumpTree -> String
dumpTree =
  \case
    Tree cons comp ->
      let n = length comp
       in unlines [cons, show n, concatMap dumpTree comp]
    Leaf kind str ->
      let n = length str
       in unwords ["@", dumpKind kind, show n, str]