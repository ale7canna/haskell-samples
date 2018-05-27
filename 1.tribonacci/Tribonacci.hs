module Tribonacci where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci _ n
  | n <= 0 = []
tribonacci (a, b, c) n =
  compute (n - 3) (a:b:c:[])

compute :: Num a =>  Int -> [a] -> [a]
compute n ls
  | n <= 0 = ls
compute _ [] = []
compute n ls =
  let result =  ls ++ [sum (takeLast 3 ls)] in compute (n - 1) result

takeLast :: Num a => Int -> [a] -> [a]
takeLast n _
  | n <= 0 = []
takeLast _ [] = []
takeLast n ls = (takeLast (n-1) (init ls)) ++ [last ls]


