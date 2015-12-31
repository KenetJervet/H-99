-- Problem 13: Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method directly.
-- I.e. don't explicitly create the sublists containing the duplicates,
-- as in problem 9, but only count them. As in problem P11, simplify the result list
-- by replacing the singleton lists (1 X) by X.

module H99.P13 where

import H99.P11

encodeDirect :: (Eq a) => [EncodeElement a] -> [a]
encodeDirect = undefined  -- I don't quite get the idea of this problem.
