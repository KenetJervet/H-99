-- Problem 4: Find the number of elements of a list.

module H99.P4 where

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
