absoluto :: Int -> Int
absoluto x | (x >= 0) = x
            | (x < 0) = -x


main = do
    x_entrada <- getLine --recebe a x_entrada
    let x = read x_entrada :: Int
    print (absoluto x)
    