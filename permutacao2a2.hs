permutacao2a2 :: String->String
permutacao2a2 [] = []
permutacao2a2 (x:xs)
    |(mod (length (x:xs)) 2) == 0 = trocaPrimeiros x xs ++ permutacao2a2 xs
    |otherwise = permutacao2a2 xs
    
trocaPrimeiros :: Char->String->String
trocaPrimeiros x (y:ys) = [y] ++ [x]

main :: IO()
main = do
    s <- getLine
    putStrLn $ permutacao2a2 s
