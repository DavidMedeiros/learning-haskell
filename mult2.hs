main :: IO()
main = do
    x <- getLine
    y <- getLine
	putStrLn (show (x*y))