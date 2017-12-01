intercala :: String -> String -> String
intercala (x:xs) (y:ys) = ([x] ++ [y]) ++ intercala xs ys
intercala [] [] = []

main = do
    input1 <- getLine
    input2 <- getLine
    
    putStrLn $ intercala input1 input2

