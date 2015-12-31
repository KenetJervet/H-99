-- Problem 16: Drop every N'th element from a list.

module H99.P16 where

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery l i = take (i-1) l ++ dropEvery (drop i l) i
