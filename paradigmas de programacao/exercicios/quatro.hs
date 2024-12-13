f_xor :: Bool -> Bool -> Bool
f_xor x y = (x || y) && not (x && y)

main = do
    
    x <- getLine
    y <- getLine
    
    let b = read x :: Bool
    let a = read y :: Bool
    
    print (f_xor b a)
    