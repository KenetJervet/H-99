-- Problem 10: Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

module H99.P10 where

import Control.Arrow
import Data.List

encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode a@(x:_) = let (l, r) = span (==x) a in (length l, x):encode r

encode' :: (Eq a) => [a] -> [(Int, a)]
encode' = map (length &&& head) . group
