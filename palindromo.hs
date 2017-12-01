reverte :: String -> String
reverte(x:xs) = reverte(xs) ++ [x]
reverte [] = []

ehPalindromo(x:xs) = if (x:xs) == reverte(x:xs) then "True" else "False"

main = do
    input1 <- getLine
    
    putStrLn $ ehPalindromo input1 
