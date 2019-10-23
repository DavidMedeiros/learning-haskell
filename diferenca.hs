somaDosQuadrados :: [Int] -> Int
somaDosQuadrados [] = 0
somaDosQuadrados (head:tail) = head ^ 2 + somaDosQuadrados tail 

somaDosTermos :: [Int] -> Int
somaDosTermos [] = 0
somaDosTermos (head:tail) = head + somaDosTermos tail

main :: IO ()
main = do

	number <- getLine
	
	let numero = read number
	
	let somaDosTermosAoQuadrado = (somaDosTermos [1..numero]) ^ 2
	
	let resultado = (somaDosTermosAoQuadrado) - (somaDosQuadrados [1..numero])
	
	putStrLn $ show(resultado)
