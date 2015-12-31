-- Problem 2: Find the last but one element of a list.

module H99.P2 where

myButLast :: [a] -> a
myButLast [x, _] = x
myButLast (_:xs) = myButLast xs
myButLast _ = error "not enough elements"
