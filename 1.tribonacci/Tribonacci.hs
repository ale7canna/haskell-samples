module Tribonacci where

tribs :: Num a => [a]
tribs = tribonacci (1, 1, 1)

tribonacci :: Num a => (a, a, a) -> [a]
tribonacci (a, b, c) =
  let ls = a:b:c:[] in ls ++ compute (ls)

compute :: Num a => [a]  -> [a]
compute [] = []
compute ls =
  let res = sum (take 3 (reverse ls)) in res: compute (ls ++ [res])
