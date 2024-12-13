media :: Float -> Float -> Float -> String
media x y z 
    | (aux >= 6) = "Aprovado"
    | otherwise = "Reprovado"
    where
        aux =  (x + y + z) / 3
    
main = do
    
    x <- getLine
    y <- getLine
    z <- getLine
    
    let a = read x :: Float
    let b = read y :: Float
    let c = read z :: Float
    
    print (media a b c)
    