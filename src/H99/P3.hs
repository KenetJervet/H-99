-- Problem 3: Find the K'th element of a list.
-- The first element in the list is number 1.

module H99.P3 where

elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) n
  | n > 1 = elementAt xs (n-1)
elementAt _ _ = error "index out of bound"
