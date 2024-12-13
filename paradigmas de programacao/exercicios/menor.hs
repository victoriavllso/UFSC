menor :: [Int] -> Int
menor [] = error "Lista vazia"
menor [a] = a -- caso base
menor (a:b) | (a < menorRestante) = a
            | otherwise = menorRestante
            
            where
                menorRestante = menor b

main = do
    print(menor [60,3,80,1,7])