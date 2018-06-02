module Difference where

difference :: Eq a => [a] -> [a] -> [a]
difference x y = filter (\e -> not $ e `elem` y) x
