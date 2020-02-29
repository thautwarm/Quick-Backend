{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}

module Quick.Row where

class Label (l :: *) where
  label :: l

infixl 9 .:

infixr 0 .->

class Label l =>
      Field s l t
  | s l -> t
  where
  (.:) :: s -> l -> t
  (.->) :: l -> (t -> t) -> (s -> s)

data Me =
  Me

instance Label Me where
  label = Me