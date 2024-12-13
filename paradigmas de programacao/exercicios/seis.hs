triangulo :: Int -> Int -> Int -> Bool

triangulo x y z
    | (x + y > z) && (x + z > y) && (z + y > x) = True
    | otherwise = False
    
main = do
    x <- getLine
    y <- getLine
    z <- getLine
    
    let a = read x :: Int
    let b = read y :: Int
    let c = read z :: Int
    
    print(triangulo a b c)