-- Problem 18: Extract a slice from a list.

module H99.P18 where

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice lst l r = take (r-l+1) $ drop (l-1) lst
