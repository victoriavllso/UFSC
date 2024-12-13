bhaskara :: Float-> Float-> Float -> (Float, Float)

bhaskara a b c
    | delta < 0 = error "A equação não possui raízes reais"
    | otherwise = ((-b + sqrt delta) / (2 * a), (-b - sqrt delta) / (2 * a))
    where
        delta = b^2 - 4 * a * c

main = do
    x <- getLine
    y <- getLine
    z <- getLine
    
    let a = read x :: Float
    let b = read y :: Float
    let c = read z :: Float
    
    print(bhaskara a b c)