-- Problem 5: Reverse a list.

module H99.P5 where

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- This is much better
myReverse' :: [a] -> [a]
myReverse'  = foldl (flip (:)) []
