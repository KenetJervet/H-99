-- Problem 20: Remove the K'th element from a list.

module H99.P20 where

import Control.Arrow

removeAt :: [a] -> Int -> (a, [a])
removeAt l idx = (!! idx0) &&& (uncurry (++) . (take idx0 &&& drop (idx0+1))) $ l
  where idx0 = idx-1
