generate_coords :: (Int,Int) -> Int -> String-> [(Int,Int)]
generate_coords (a,b) size format | (format == "horizontal") = [ (x,b) | x <-[a,(a+1)..(a + size - 1)] ]
                                  | otherwise = [ (a,x) | x <-[b,(b+1)..(b + size - 1)] ]

verify_collision :: [(Int,Int)] -> [(Int,Int)] -> Bool
verify_collision m n = ( ( length [ x | x <-m , x `elem` n ] ) /= 0 )

main :: IO()
main = do
    first_input <- getLine
    format_one <- getLine
    second_input <- getLine
    format_two <- getLine
    let first_ship = (map read $ words first_input :: [Int])
    let second_ship = (map read $ words second_input :: [Int])
    let ship_one = generate_coords ( (first_ship !! 0), (first_ship !! 1) ) (first_ship !! 2) format_one
    let ship_two = generate_coords ( (second_ship !! 0), (second_ship !! 1 ) ) (second_ship !! 2) format_two

    putStrLn(show (verify_collision ship_one ship_two) )
