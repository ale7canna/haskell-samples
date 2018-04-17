doubleMe x =
  x + x

doubleUs x y =
  doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

createList x y =
  x : y : []

doubleChar x =
  createList x x

doubleList x =
  if null x
  then
    []
  else
    (doubleChar (head x)) ++ (doubleList (tail x))

reverseStringIf x =
  if x == []
  then
    []
  else
    reverseStringIf (tail x) ++ [head x]
    
reverseStringPatternMatching [] = []    
reverseStringPatternMatching x =
  reverseStringPatternMatching (tail x) ++ [head x]
  
reverseStringGuards x    
  | x == []     = []
  | otherwise   = reverseStringGuards (tail x) ++ [head x]