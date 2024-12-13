ocorrencias ::  [Int] ->Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) c | (a == c) = 1 + (ocorrencias b c)
                    | otherwise = (ocorrencias b c)


main = do
    print(ocorrencias [6,3,6,1,6] 6)