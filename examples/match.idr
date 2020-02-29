-- idris examples\match.idr -o examples\match.qb --codegen qb --cg-opt "--javaName" --cg-opt "--symemu"
module Main

i : Integer -> Integer
i x = x

showInt : Integer -> String
showInt = show

main : IO ()
main = do
	putStrLn "calc:"
	putStrLn $ showInt $ case (i 12, i 2) of
		(a, b) => a + b
  
