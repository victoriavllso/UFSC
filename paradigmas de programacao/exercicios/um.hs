potencia :: Int -> Int -> Int 
potencia x y = x ^ y

main = do
    x_entrada <- getLine --recebe a x_entrada
    y_entrada <- getLine
    let x = read x_entrada :: Int
    let y = read y_entrada :: Int
    print (potencia x y)