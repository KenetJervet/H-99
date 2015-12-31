-- Problem 12: Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 11.
-- Construct its uncompressed version.

module H99.P12 where

import H99.P11

decodeModified :: (Eq a) => [EncodeElement a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = case x of
  (Single a) -> a:decodeModified xs
  (Multiple t a) -> replicate t a ++ decodeModified xs
