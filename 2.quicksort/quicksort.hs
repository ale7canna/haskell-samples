module QuickSort where

quicksort :: (Num a, Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  quicksort (filter (\e -> e < x) xs) ++ [x] ++ quicksort(filter (\e -> e >= x) xs)