-- Prática 04 de Haskell
-- Nome: João Pedro Marques

--1
faixaIdoso :: Int -> String
faixaIdoso x 
  |x < 59 = "ND"
  |x > 60 && x < 64 = "IDO64"
  |x > 64 && x < 70 = "IDO69"
  |x > 69 && x < 76 = "IDO75"
  |x > 75 && x < 80 = "IDO79"
  |x > 79 = "IDO80"

--2
--classifIdosos :: [(String,Int)] -> [(String,Int,String)]
--classifIdosos nome idade cod = [(x,y,z) | x <- nome, y <- idade, z <- faixaIdoso idade]

--3
--classifIdosos' :: [String] -> [Int] -> [(String,Int,String)]
--classifIdosos' nome idade = zip nome idade (faixaIdoso idade)

--4
strColor :: (Int,Int,Int) -> String
strColor a = "rgb" ++ show a

--5
--genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
--genCircs n (cx,cy) r = [(x,y,z) | x <- take n [10,12..], y <- cy, z <- r]

--6
genReds :: Int -> [(Int,Int,Int)] 
genReds n = [(x,y,z) | x <- take n [40,80..], y <- take 1 [0..], z <- take 1 [0..]]