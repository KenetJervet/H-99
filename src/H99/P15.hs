-- Problem 15: Replicate the elements of a list a given number of times.

module H99.P15 where

repli :: [a] -> Int -> [a]
repli l t = concatMap (replicate t) l

repli' :: [a] -> Int -> [a]
repli' = flip $ concatMap . replicate
