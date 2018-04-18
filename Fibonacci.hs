fibonacci :: Integer -> Integer -> Integer
fibonacci seed n | n == 1 = seed
                 | n == 2 = seed
                 | otherwise = fibonacci seed (n-1) + fibonacci seed (n-2) 

fibList :: Integer -> Integer -> [Integer]
fibList seed 1 = [seed]
fibList seed 2 = [seed, seed]
fibList seed n = fibList seed (n-1) ++ [last (fibList seed (n-1)) + last (fibList seed (n-2))]

fibLast :: Integer -> Integer -> Integer
fibLast seed n = last (fibList seed n) 


