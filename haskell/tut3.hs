import Data.Time.Format.ISO8601 (yearFormat)

compareNums :: (Ord c) => c -> c -> Ordering
compareNums a b
  | a > b = GT
  | a < b = LT
  | otherwise = EQ

myProduct :: [Int] -> Int
myProduct = product

subtractNums :: (Num a) => a -> a -> a
subtractNums x y = x - y

main = do
  --   print $ compareNums 2 3
  --   print $ myProduct [1, 2, 3, 4, 5]
  --   print $ subtractNums 5 3
  print $ subtractNums 5.23 3.48