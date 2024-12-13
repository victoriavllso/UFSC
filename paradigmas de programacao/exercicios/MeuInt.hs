
class (Integral x) => MeuInt x where

-- métodos originais
    bigger :: x -> x -> x
    smaller :: x -> x -> x
    
-- métodos novos
    par :: x->Bool
    impar :: x->Bool
    primo :: x-> Bool
    mdc :: x->x->x
    (===) :: x->x->Bool

-- implementação dos métodos

    -- bigger
    bigger a b | a > b = a
                | otherwise = b
    
    -- smaller
    smaller a b | a == (bigger a b) = b
                | otherwise = a
    
    -- par
    par a | (a `mod` 2 == 0) = True
        |otherwise = False
        
    -- impar
    impar a = not (par a)
    
    -- primo
    primo 1 = False -- 1 não é primo
    primo 2 = True -- 2 é o menor primo
    primo a = null [x| x<- [2..a-1], a `mod` x ==0] -- Se não houver divisores, a lista será vazia (True)
    
    -- mdc
    mdc a 0 = a
    mdc a b = mdc b (a `mod` b)
    
    -- operador para diferença maior ou igual a 1
    a === b | ((a-b) <= 1) = True
            | otherwise = False
-- instancias 
instance MeuInt Integer -- instancia de MeuInt com tipo integer
instance MeuInt Int -- instancia com tipo int

-- novos métodos
--verifica se um numero é multiplo de outro
multiplo :: (MeuInt x) => x->x->Bool
multiplo a b | (a `mod` b == 0) = True
            |otherwise = False
            
-- novo operador ** (eleva ao cubo e soma um valor)
(***.) :: (MeuInt x) => x->x->x
a ***. b = (a*a*a) + b
main = do
    -- Exemplos usando os novos métodos e operadores
    print ("Bigger entre 5 e 10: " ++ show (bigger (5 :: Int) (10 :: Int)))
    print ("Smaller entre 5 e 10: " ++ show (smaller (5 :: Int) (10 :: Int)))
    print ("5 e par ? " ++ show (par (5 :: Int)))
    print ("6 e impar? " ++ show (impar (6 :: Int)))
    print ("7 e primo? " ++ show (primo (7 :: Int)))
    print ("MDC entre 24 e 18: " ++ show (mdc (24 :: Int) (18 :: Int)))
    print ("A diferenca entre 5 e 6 e menor ou igual a 1? " ++ show ((5 :: Int) === (6 :: Int)))
    print ("6 e multiplo de 3? " ++ show (multiplo (6 :: Int) (3 :: Int)))
    print ("Cubo de 3 somado a 4: " ++ show ((3 :: Int) ***. (4 :: Int)))