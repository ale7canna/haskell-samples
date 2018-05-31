applyTwice :: (a -> a) -> a -> a
applyTwice f x =
  f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) =
  (f x y) : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

collatz :: Integer -> [Integer]
collatz x
  | x == 1 = [1]
  | even x = x:collatz (x `div` 2)
  | odd x   = x:collatz (x * 3 + 1)

countCollatzLongerThan15 = length (filter (\e -> (length e) > 15) (map collatz [1..100]))

mulThree = map (3*)

filterEven = filter (\e -> even e)

composition = mulThree . filterEven

oddSquareSum = sum . takeWhile (<10000) . filter odd $ map (^2) [1..]
