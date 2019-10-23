myButLast [] = error "Empty list"
myButLast [x] = error "Too few elements"
myButLast (x:xs) = 
		if length xs == 1 then x
		else myButLast xs