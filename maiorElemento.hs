maiorElemento :: Int -> [Int] -> Int
maiorElemento maior [] = maior
maiorElemento maior lista = if maior > (head lista) then maiorElemento (head lista) (tail lista) else maiorElemento maior (tail lista)

main :: IO ()
main = do

	entrada <- getLine
	
	let lista = read entrada
	
	let maiorDeTodos = maiorElemento (head lista) (tail lista)
	
	putStrLn (show maiorDeTodos)
