

    doubleMe x = x + x
    doubleUs x y = (doubleMe x) + (doubleMe y)
    doubleSmallNumber x = if x <= 100 
                      then doubleMe x
                      else x

    addThree :: Int -> Int -> Int -> Int
    addThree x y z = x + y + z

    lucky num = if (num == 7) then "SETE! BINGO!" else "Desculpe, tente novamente!" 
    
    eh7 7 = "Ahasou é um 7"
    eh7 x = "tenta escrever um 7, querida"
    
    estaentreumecinco n = if (n == 1) then "Um!"
                         else if (n==2) then "Dois"
                         else if (n==3) then "Tres"
                         else if (n==4) then "quatro"
                         else if (n==5) then "cinco"
                         else "N ta entre um e cinco"             

    fat 0 = 1
    fat n = n * fat (n - 1)

    addVector a b = ((fst a) + (fst b), (snd a) + (snd b)) 

    first (x,_,_) = x
    second (_,x,_) = x
    third (_,_,x) = x
    
    
    head' [] = error "Nao eh possivel chamar head para uma lista vazia"
    head' (x:_) = x
    
    tail' [] = error "lala"
    tail' ((_):x) = x
    
    length' [] = 0
    length' (_:x) = 1 + length' x
    
    sum' [] = 0
    sum' (x:xs) = x + sum(xs)
    
    capital all@(x:xs) = "A primeira letra de " ++ all ++ " eh " ++ [x]
    
    notas nota1 nota2 
        | media <= 4 = "Voce ta reprovado"
        | media > 4 && media < 7 = "Recuperacao"
        | otherwise = "Aprovado"
        where media = (nota1 + nota2) / 2
     
        
    initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
        where (f:_) = firstname  
              (l:_) = lastname  
    
