area :: Float -> Float -> Float
area base altura = base * altura

main = do
    
    base <- getLine
    altura <- getLine
    
    let b = read base :: Float
    let a = read altura :: Float
    
    print (area b a)
    