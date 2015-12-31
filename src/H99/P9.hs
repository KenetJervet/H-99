-- Problem 9: Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate sublists.

module H99.P9 where

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack a@(x:_) = let (l, r) = span (==x) a in l:pack r
