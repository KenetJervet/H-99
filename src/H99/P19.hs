-- Problem 19: Rotate a list N places to the left.

module H99.P19 where

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate l 0 = l
rotate a@(x:xs) t
  | t > 0 = rotate (xs ++ [x]) (t-1)
  | otherwise = rotate a (length a + t)
