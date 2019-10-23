menorElemento :: Int -> [Int] -> Int
menorElemento menor [] = menor
menorElemento menor lista = if menor > (head lista) then menorElemento (head lista) (tail lista) else menorElemento menor (tail lista)

main :: IO ()
main = do

	entrada <- getLine
	
	let lista = read entrada
	
	let menorDeTodos = menorElemento (head lista) (tail lista)
	
	putStrLn (show menorDeTodos)
