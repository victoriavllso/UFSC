
import System.Environment (getArgs)
import qualified Data.Map as Map -- Biblioteca para dicionários em Haskell
import Data.List
import Data.Map (Map)
import Data.Char (isSpace)


------------------------------------------ FUNÇÃO DE LEITURA -----------------------------------------
readInput :: FilePath -> IO ([[Int]], Map String [(Int, Int)], Int)
readInput path = do
    contents <- readFile path
    let file_lines = map (dropWhile isSpace) (filter (not . null) (lines contents))
        size = read (head (words (file_lines !! 1))) :: Int
        fillMatrix = extractMatrix size file_lines "starting board"
        regions = extractRegions size file_lines "regions"
    return (fillMatrix, regions, size)

-- Extrai a matriz inicial
extractMatrix :: Int -> [String] -> String -> [[Int]]
extractMatrix size lines startKey =
    case findIndex (== startKey) lines of
        Just idx -> map (map read . words) (take size (drop (idx + 1) lines))
        Nothing  -> []

-- Extrai as regiões
extractRegions :: Int -> [String] -> String -> Map String [(Int, Int)]
extractRegions size lines startKey =
    case findIndex (== startKey) lines of
        Just idx -> foldl' addRegion Map.empty rows
            where
                rows = zip [0..] (take size (drop (idx + 1) lines))
                addRegion acc (rowIdx, row) =
                    foldl' (\m (colIdx, region) -> 
                        Map.insertWith (++) region [(rowIdx, colIdx)] m) acc 
                    (zip [0..] (words row))
        Nothing -> Map.empty


------------------------------------------ LÓGICA PRINCIPAL ------------------------------------------

-- Aqui testamos as regras do jogo para ver se um número é válido em uma posição
isSafe :: [[Int]] -> Map.Map String [(Int, Int)] -> Int -> Int -> Int -> Int -> Bool
isSafe fill_matrix regions size x y num = 

    -- Primeiro encontramos algumas informações necessárias para o teste
    let region_key = findRegion (x, y) regions -- "Nome" da região a qual x,y pertence
        region = regions Map.! region_key -- Lista de coordenadas pertences à região
        region_size = decideRegionLimit regions region_key -- Tamanho da região

        -- REGRA 0: Checar se o número está dentro do limite máximo da região
        test1 = not (num > region_size)
        -- REGRA 1: Checar se o número já está na região
        test2 = not (checkNumInRegion fill_matrix region num)
        -- REGRA 2: Checar se o número é diferentes dos vizinhos diretos
        test3 = checkBoundaryAndNeighbors fill_matrix size x y num
        -- REGRA 3: Checar se é maior que o de baixo dele e menor que o de cima, se forem da mesma região e /= 0
        test4 = checkVerticalLimits fill_matrix region x y num
        -- Combina todos os testes para avaliar resultados
        tests = [test1, test2, test3, test4]
    
    -- Se der positivo em todos os testes, retorna True (adiciona valor à posição)
    in all (== True) tests

------------------------------------------ FUNÇÕES AUXILIARES ------------------------------------------

-- Função para checar Regra 3
checkVerticalLimits :: [[Int]] -> [(Int, Int)] -> Int -> Int -> Int -> Bool
checkVerticalLimits fill_matrix region x y num =
    let closestAbove = findClosestAbove fill_matrix region x y -- Encontra o número mais próximo acima de (x, y) na região
        closestBelow = findClosestBelow fill_matrix region x y -- Encontra o número mais próximo abaixo de (x, y) na região
    in  (closestAbove == 0 || num < closestAbove)  -- Se o num encontrado for /= 0, ele deve ser menor que num 
        && (closestBelow == 0 || num > closestBelow)  -- Se o num encontrado for /= 0, ele deve ser maior que num 


-- Filtra apenas os valores na mesma coluna (mesmo y) e com x > x atual, e pega o menor x possível, ou 0 se não houver
findClosestAbove :: [[Int]] -> [(Int, Int)] -> Int -> Int -> Int
findClosestAbove fill_matrix region x y = 
    let above = filter (\(nx, ny) -> ny == y && nx < x && fill_matrix !! nx !! ny /= 0) region -- Filtra valores na mesma coluna e acima
        closest = foldl (\acc (nx, ny) -> 
                         let currentDist = abs (nx - x)  -- Calcula a distância em x
                             accDist = abs (fst acc - x) -- Distância do valor anterior mais próximo
                         in if accDist == 0 || currentDist < accDist -- Verifica se a distância atual é menor
                            then (nx, fill_matrix !! nx !! ny)
                            else acc) (x, 0) above -- (x, 0) serve como valor inicial (distância arbitrária 0)
    in snd closest -- Retorna o valor do número mais próximo


-- Filtra apenas os valores na mesma coluna (mesmo y) e com x < x atual, e pega o maior x possível, ou 0 se não houver
findClosestBelow :: [[Int]] -> [(Int, Int)] -> Int -> Int -> Int
findClosestBelow fill_matrix region x y = 
    let below = filter (\(nx, ny) -> ny == y && nx > x && fill_matrix !! nx !! ny /= 0) region -- Filtra valores na mesma coluna e abaixo
        closest = foldl (\acc (nx, ny) -> 
                         let currentDist = abs (nx - x)  -- Calcula a distância em x
                             accDist = abs (fst acc - x) -- Distância do valor anterior mais próximo
                         in if accDist == 0 || currentDist < accDist -- Verifica se a distância atual é menor
                            then (nx, fill_matrix !! nx !! ny)
                            else acc) (x, maxBound) below -- (x, maxBound) serve como valor inicial (distância arbitrária)
    in if snd closest == maxBound then 0 else snd closest -- Retorna o valor do número mais próximo ou 0 se não houver nenhum


-- Função para checar Regra 2
checkBoundaryAndNeighbors :: [[Int]] -> Int -> Int -> Int -> Int -> Bool
checkBoundaryAndNeighbors fill_matrix size x y num = 
    let neighbors = [(x-1, y), (x+1, y), (x, y-1), (x, y+1)]  -- Define os vizinhos a serem testados
        validNeighbors = filter (isValidNeighbor size) neighbors  -- Checa se não está na borda da matriz fill
        checkResults = map (\(nx, ny) -> (nx, ny, fill_matrix !! nx !! ny == num)) validNeighbors  -- Testa se num == vizinho para cada vizinho
    in all (\(_, _, isValid) -> not isValid) checkResults  -- Nenhum vizinho pode ser igual a num para retornar True


-- Função para checar se um vizinho não está na borda da matriz fill (daria erro de índice)
isValidNeighbor :: Int -> (Int, Int) -> Bool
isValidNeighbor size (x, y) = x >= 0 && x < size && y >= 0 && y < size


-- Função para checar regra 1
checkNumInRegion :: [[Int]] -> [(Int, Int)] -> Int -> Bool
checkNumInRegion _ [] _ = False
checkNumInRegion fill_matrix ((x, y) : t) num | (fill_matrix !! x !! y) == num = True -- Se o número estiver na região, retorna True
                           | otherwise = checkNumInRegion fill_matrix t num -- Se não, continua procurando


-- Função usada para determinar o tamanho da região de x,y
decideRegionLimit :: Map.Map String [(Int, Int)] -> String -> Int
decideRegionLimit regions key =
    case Map.lookup key regions of
        Just regionList -> length regionList  -- Dada a região de x,y, retorna o tamanho da região


-- Função que determina a região de x,y
findRegion :: (Int, Int) -> Map.Map String [(Int, Int)] -> String
findRegion (x, y) regions = 
    let regionKeys = Map.keys regions  -- Prepara busca pelas chaves do dicionario de regiões
    in findRegionHelper (x, y) regions regionKeys


-- Função que percorre as regiões e verifica se x,y está em alguma delas
findRegionHelper :: (Int, Int) -> Map.Map String [(Int, Int)] -> [String] -> String
findRegionHelper (x, y) regions (key:keys) =
    if regionContains (regions Map.! key) x y
    then key  -- Se a região conter x,y, retorna a chave da região
    else findRegionHelper (x, y) regions keys  -- Se não, continua procurando


-- Checa se uma coordenada expecifica está dentro de uma lista de coordenadas (no caso, a região)
regionContains :: [(Int, Int)] -> Int -> Int -> Bool
regionContains [] _ _ = False
regionContains (h : t) x y | h == (x, y) = True
                           | otherwise = regionContains t x y


solveKojun :: [[Int]] -> Map.Map String [(Int, Int)] -> Int -> Int -> Int -> Maybe [[Int]] -- assinatura de tipo
solveKojun fillMatrix regions size x y

    -- Caso base 1: Chegamos ao final do tabuleiro (última linha e além da última coluna).
    -- Isso indica que encontramos uma solução válida, então retornamos `Just fillMatrix`.
    | (x == size -1) && (y==size) = Just fillMatrix -- se chegamos ao final, retornamos a matriz

    -- Caso base 2: Se chegamos ao final da linha (`y == size`), passamos para a próxima linha 
    -- (`x + 1`) e reiniciamos a coluna para 0 (`y = 0`).  
    | (y == size) = solveKojun fillMatrix regions size (x+1) 0  -- se chegamos ao final da linha, passamos para a próxima

    -- Caso base 3: Se a célula atual (`fillMatrix !! x !! y`) já está preenchida (valor maior que 0),
    -- apenas avançamos para a próxima célula na mesma linha (`y + 1`).
    | (fillMatrix !! x !! y) > 0 = solveKojun fillMatrix regions size x (y+1) -- se a célula já está preenchida, passamos para a próxima

     -- Caso geral: Se a célula está vazia, tentamos preenchê-la com números de 1 a `size`.
   
    | otherwise = tryNumbers [1..size] -- tentamos preencher com numeros de 1 até size
    where
        tryNumbers [] = Nothing -- se não conseguimos preencher com nenhum número, retornamos Nothing
        tryNumbers (num:nums)
            | isSafe fillMatrix regions size x y num = 
                -- Se o número é seguro, criamos uma nova matriz (`newMatrix`) com o número `num` 
                -- inserido na posição `(x, y)`.
                let newMatrix = updateMatrix fillMatrix x y num  -- Atualiza a matriz com o número escolhido

                -- Chamamos recursivamente `solveKojun` com a nova matriz e a próxima célula.
                -- Se a chamada recursiva retornar uma solução (`Just solution`), propagamos a solução.
                in case solveKojun newMatrix regions size x (y + 1) of
                    Just solution -> Just solution
                    Nothing -> tryNumbers nums  -- Se falhar, tenta o próximo número
            | otherwise = tryNumbers nums

-- Função auxiliar para atualizar um elemento da matriz
-- Atualiza a matriz em uma posição específica:
-- 1. `take x matrix`: Obtém todas as linhas da matriz antes da linha `x`.
-- 2. `[take y (matrix !! x) ++ [val] ++ drop (y + 1) (matrix !! x)]`:
--    Atualiza a linha `x`:
--    - `take y (matrix !! x)`: Pega os elementos antes da coluna `y`.
--    - `[val]`: Insere o novo valor na posição `(x, y)`.
--    - `drop (y + 1) (matrix !! x)`: Mantém os elementos após a coluna `y`.
-- 3. `drop (x + 1) matrix`: Mantém todas as linhas após a linha `x`.
-- O resultado é uma nova matriz com o valor atualizado.

updateMatrix :: [[Int]] -> Int -> Int -> Int -> [[Int]]
updateMatrix matrix x y val =
    take x matrix ++ [take y (matrix !! x) ++ [val] ++ drop (y + 1) (matrix !! x)] ++ drop (x + 1) matrix

--------------------------------- FUNÇÃO DE FORMATAÇÃO DA SAÍDA --------------------------------------------
formatRow :: [Int] -> String
formatRow row = "[" ++ intercalate ", " (map show row) ++ "]"

------------------------------------------- MAIN -------------------------------------------------------


main = do
    
    args <- getArgs
    if null args
        then putStrLn "Erro: forneça o caminho para o arquivo .txt como argumento."
        else do
            let filePath = head args
            -- Lê o arquivo e processa os dados
            (fillMatrix, regions, size) <- readInput filePath
    
            let result = solveKojun fillMatrix regions size 0 0
            case result of
                Just result -> mapM_ (\row -> putStrLn (formatRow row)) result
                Nothing     -> putStrLn "Não foi possível resolver a matriz."

