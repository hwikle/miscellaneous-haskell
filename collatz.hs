collatz :: Integer -> Integer
collatz n = if n `mod` 2 == 0
		then n `quot`  2
		else 3 * n + 1

isCollatz :: Integer -> Bool
isCollatz n = if n == 1
		then True
		else isCollatz(collatz(n))
