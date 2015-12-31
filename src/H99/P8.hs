-- Problem 8: Eliminate consecutive duplicates of list elements.

module H99.P8 where

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress x@[_] = x
compress (x:y:xs)
  | x == y = compress (x:xs)
  | otherwise = x:compress (y:xs)
