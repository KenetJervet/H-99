-- Problem 14: Duplicate the elements of a list.

module H99.P14 where

dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:dupli xs
