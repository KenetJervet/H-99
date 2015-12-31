-- Problem 7: Flatten a nested list structure.

module H99.P7 where

import Control.Monad

flatten :: [[a]] -> [a]
flatten = join
