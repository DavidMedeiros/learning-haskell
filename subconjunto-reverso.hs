reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

slice from to xs = take (to - from + 1) (drop from xs)

search_word :: String -> String -> Bool
search_word n m = ( True `elem` [ ( ( slice x (x + (length m) - 1) n ) == m ) | x <- [0,1..((length n) - (length m) ) ] ] )

main :: IO()
main = do
    first <- getLine
    second <- getLine
    putStrLn ( show ( search_word first ( reverseList second ) ) )
