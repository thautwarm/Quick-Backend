main : IO ()
main = do sline <- getLine
          let arr = [ the Nat (cast v) | v <- words sline ]
          printLn (arr)