
busca ::  [Int] ->Int -> Bool
busca [] _ = False
busca (a:b) c | (a == c) = True
              | otherwise = busca b c


main = do
    print(busca [60,3,80,1,7] 6)
    print(busca [60,3,80,1,7] 1)
