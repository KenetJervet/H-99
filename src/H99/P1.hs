-- Problem 1: Find the last element of a list.

module H99.P1 where

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_:xs) = myLast xs
