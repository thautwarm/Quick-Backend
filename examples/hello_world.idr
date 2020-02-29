-- idris examples\hello_world.idr -o examples\hello_world.qb --codegen qb --cg-opt "--javaName" --cg-opt "--symemu"
module Main


main : IO ()
main = do
    putStrLn "hello world"

