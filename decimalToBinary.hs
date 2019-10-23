decimalToBinary :: Int -> [Int]
decimalToBinary 0 = []
decimalToBinary num = decimalToBinary ( num `quot` 2 ) ++ [ num `rem` 2 ]

join :: [Int] -> String
join [] = ""
join (a:as) = show a ++ join as 

main :: IO ()
main = do

  number <- getLine
  
  putStrLn $ join $ decimalToBinary (read number) 
  
