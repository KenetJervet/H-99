-- Problem 17: Split a list into two parts; the length of the first part is given.

module H99.P17 where

import Control.Arrow

split :: [a] -> Int -> ([a], [a])
split lst at = (take at &&& drop at) lst

split' :: [a] -> Int -> ([a], [a])
split' = flip splitAt
