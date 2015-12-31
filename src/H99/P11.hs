-- Problem 11: Modified run-length encoding. Modify the result
-- of problem 10 in such a way that if an element has no duplicates
-- it is simply copied into the result list. Only elements with
-- duplicates are transferred as (N E) lists.

module H99.P11 where

import Data.List

data EncodeElement a = Single a | Multiple Int a deriving Show

encodeModified :: (Eq a) => [a] -> [EncodeElement a]
encodeModified = map f . group
  where
    f g
      | l == 1 = Single (head g)
      | otherwise = Multiple l (head g)
      where l = length g
