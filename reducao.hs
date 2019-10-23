reductor :: String -> Int
reductor number = do
	let reduzido = reducao number
	if (reduzido) >= 10 
		then reductor (show reduzido)
		else reduzido

reducao :: String -> Int
reducao [] = 0
reducao (head:tail) = (read [head] :: Int) + (reducao tail)

verifica :: Int -> Int -> Int
verifica x y = 
  if x > y 
    then 1
  else if x < y
    then 2
    else 0

main :: IO ()
main = do

  numero1 <- getLine
  numero2 <- getLine
  
  let reducao1 = reductor numero1
  let reducao2 = reductor numero2
  
  let resultado = verifica reducao1 reducao2
  
  print resultado
