-- Problem 6: Find out whether a list is a palindrome.
-- A palindrome can be read forward or backward; e.g. (x a m a x)

module H99.P6 where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x:xs)
  | y <- last xs
  , x == y = isPalindrome (init xs)
  | otherwise = False
