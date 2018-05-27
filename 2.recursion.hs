findIndex :: [Int] -> Int -> Int
findIndex xs current
  | sum (take current xs) >
    sum xs - sum (take current xs) = current
  | otherwise = findIndex xs (current + 1)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Can't find maximum of empty list"
maximum' [a] = a
maximum' (x:xs) = max x (maximum' xs)

take' :: Int -> [a] -> [a]
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x:take' (n - 1) xs
