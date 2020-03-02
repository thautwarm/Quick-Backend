module Main
import QB.FFI

-- helper functions
assert : a -> a -> IO Unsafe
assert x1 x2 = callff2 "assert2" (unsafe x1) (unsafe x2)

annInt : Integer -> Integer
annInt x = x

showInt : Integer -> String
showInt = show

-- http://docs.idris-lang.org/en/latest/tutorial/typesfuns.html#primitive-types
x : Int
x = 42

foo : String
foo = "Sausage machine"

bar : Char
bar = 'Z'

quux : Bool
quux = False


-- http://docs.idris-lang.org/en/latest/tutorial/typesfuns.html#functions
plus' : Nat -> Nat -> Nat
plus' Z     y = y
plus' (S k) y = S (plus' k y)

-- Unary multiplication
mult' : Nat -> Nat -> Nat
mult' Z     y = Z
mult' (S k) y = plus' y (mult' k y)

%hide reverse
-- http://docs.idris-lang.org/en/latest/tutorial/typesfuns.html#where-clauses
reverse : List a -> List a
reverse xs = revAcc [] xs where
  revAcc : List a -> List a -> List a
  revAcc acc [] = acc
  revAcc acc (x :: xs) = revAcc (x :: acc) xs


foo' : Int -> Int
foo' x = case isLT of
            Yes => x*2
            No => x*4
    where
       data MyLT = Yes | No

       isLT : MyLT
       isLT = if x < 20 then Yes else No

even : Nat -> Bool
even Z = True
even (S k) = odd k where
  odd Z = False
  odd (S k) = even k

test : List Nat
test = [c (S 1), c Z, d (S Z)]
  where c x = 42 + x
        d y = c (y + 1 + z y)
              where z w = y + w


-- http://docs.idris-lang.org/en/latest/tutorial/typesfuns.html#first-class-types
isSingleton : Bool -> Type
isSingleton True = Nat
isSingleton False = List Nat

mkSingle : (x : Bool) -> isSingleton x
mkSingle True = 0
mkSingle False = []

sum : (single : Bool) -> isSingleton single -> Nat
sum True x = x
sum False [] = 0
sum False (x :: xs) = x + sum False xs

main : IO ()
main = do
    -- http://docs.idris-lang.org/en/latest/tutorial/typesfuns.html#functions
    assert (plus' (S (S Z)) (S (S Z))) 4
    assert (mult' (S (S (S Z))) (plus' (S (S Z)) (S (S Z)))) 12
    putStrLn' $ show $ reverse [1, 2, 3]
    assert (reverse [1, 2, 3]) ([3, 2, 1])

    putStrLn' $ "sum False [1, 2, 3] = " ++ show (sum False [1, 2, 3])
    putStrLn' $ "sum True 5 = " ++ show (sum True 5)

    putStrLn' $ if x == 6 * 6 + 6 then "The answer!" else "Not the answer"
    putStrLn' $
        showInt $ case (annInt 12, annInt 2) of
             (a, b) => a + b
