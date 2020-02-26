module Main
import Data.Vect
%hide natToFin
%hide cmp
%hide index
%default total

public export
interface Indexable c i where
    eltype : Type
    index' : i -> c -> eltype

implementation Indexable (Vect k t) (Fin k) where
    eltype = t
    index' FZ (x :: xs) = x
    index' (FS k) (x :: xs) = index' k xs

int_vec : Vect 2 Int
int_vec = [2, 3]

cmp : Nat -> Nat -> Ordering
cmp Z Z = EQ
cmp Z _ = LT
cmp _ Z = GT
cmp (S k1) (S k2) = cmp k1 k2

-- -> {auto p: cmp m n = LT}

filter' : (a -> Bool) -> Vect n a -> (p ** Vect p a)
filter' p [] = ( 0 ** [] )
filter' p (x :: xs) with (filter' p xs)
   | ( a ** xs' ) = if (p x) then ( (S a) ** x :: xs' ) else ( a ** xs' )