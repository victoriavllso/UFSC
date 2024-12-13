data Arvore = Null | No Int Arvore Arvore


minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))
-- elementos da arvore = [ 52,32,12,35,56,55,64]
somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

-- Função A: Contar ocorrências de um elemento na árvore
ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | n == x = 1 + ocorrenciasElemento esq x + ocorrenciasElemento dir x
    | otherwise = ocorrenciasElemento esq x + ocorrenciasElemento dir x

-- Função B: Contar quantos elementos são maiores que um dado elemento
maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | n > x = 1 + maioresQueElemento esq x + maioresQueElemento dir x
    | otherwise = maioresQueElemento esq x + maioresQueElemento dir x

-- Função C: Calcular a média dos elementos na árvore
mediaElementos :: Arvore -> Float
mediaElementos arvore = fromIntegral (somaElementos arvore) / fromIntegral (quantidade arvore)
  where
    somaElementos Null = 0
    somaElementos (No n esq dir) = n + somaElementos esq + somaElementos dir

-- Função D: Contar a quantidade de elementos na árvore
quantidade :: Arvore -> Int
quantidade Null = 0
quantidade (No _ esq dir) = 1 + quantidade esq + quantidade dir

-- Função E: Retornar uma lista com todos os elementos da árvore
elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = n : (elementos esq ++ elementos dir)


-- Função main para testar
main :: IO ()
main = do
    putStrLn ("Soma dos elementos: " ++ show (somaElementos minhaArvore))
    putStrLn ("Elemento 30 encontrado? " ++ show (buscaElemento minhaArvore 30))
    putStrLn ("Elemento 55 encontrado? " ++ show (buscaElemento minhaArvore 55))
    putStrLn ("Minimo elemento: " ++ show (minimoElemento minhaArvore))
    putStrLn ("Ocorrencias do elemento 32: " ++ show (ocorrenciasElemento minhaArvore 32))
    putStrLn ("Quantidade de elementos maiores que 50: " ++ show (maioresQueElemento minhaArvore 50))
    putStrLn ("Media dos elementos: " ++ show (mediaElementos minhaArvore))
    putStrLn ("Lista de elementos: " ++ show (elementos minhaArvore))
