removeElement :: String -> String -> String
removeElement value [] = []
removeElement value (x:xs) | (value == [x]) = xs
                           | otherwise = ( x: ( removeElement value xs ) )

verify_inter :: String -> String -> Bool
verify_inter [] [] = True
verify_inter [x] [] = False
verify_inter [] [x] = False
verify_inter (x:xs) (h:t) | ( x `elem` (h:t) ) = verify_inter xs ( removeElement [x] (h:t) )
                          | otherwise = False

main :: IO()
main = do
    first <- getLine
    second <- getLine
    putStrLn( show ( verify_inter first second ) )
