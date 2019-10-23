repeticoes :: [Int] -> [Int] -> [Int] -> [Int]
repeticoes resultado elementoAtual lista = do
  let h = head elementoAtual
  let t = tail elementoAtual
  let nova = resultado ++ [(contaFrequencia h lista)]
  if t == [] then nova else repeticoes nova t lista
  
contaFrequencia :: Int -> [Int] -> Int
contaFrequencia number [] = 0
contaFrequencia number (a:b) = 
  if number == a 
    then 1 + contaFrequencia number b
    else contaFrequencia number b
  
main :: IO ()
main = do

  entrada <- getLine
  
  let lista = read entrada
  
  if (lista == []) then putStrLn "[]"
  else putStrLn(show(repeticoes [] lista lista))
  
