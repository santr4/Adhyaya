-- myhead
myhead :: [a] -> a
myhead (x : _) = x
myhead [] = error "Empty list"

mylength :: [a] -> Int
mylength xs = mylength' xs 0
  where
    mylength' [] n = n
    mylength' (_ : xs) n = mylength' xs (n + 1)

myreverse :: [a] -> [a]
myreverse xs = myreverse' xs []
  where
    myreverse' [] ys = ys
    myreverse' (x : xs) ys = myreverse' xs (x : ys)

secondLast :: [a] -> a
secondLast [] = error "Empty list"
secondLast [_] = error "List has only one element"
secondLast [x, _] = x
secondLast (_ : xs@(_ : _)) = secondLast xs

filterOddEven :: [Int] -> [[Int]]
filterOddEven xs = [filter odd xs, filter even xs]

subListLength :: [[a]] -> [Int]
subListLength xs = map length xs

findKelem :: [a] -> Int -> Maybe a
findKelem [] _ = Nothing
findKelem (x : _) 0 = Just x
findKelem (_ : xs) k
  | k < 0 = Nothing
  | otherwise = findKelem xs (k - 1)

doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x : xs) = 2 * x : doubleAll xs

insertAt :: [a] -> Int -> a -> [a]
insertAt xs i n = take i xs ++ [n] ++ drop i xs

-- slice function
slice :: [a] -> Int -> Int -> [a]
slice xs i k = take (k - i + 1) (drop (i - 1) xs)

main = do
  --   print $ myhead [1, 2, 3, 4]
  --   print $ mylength [1, 2, 3, 4]
  --   print $ myreverse [1, 2, 3, 4]
  --   print $ secondLast [1, 2, 3, 4]
  --   print $ filterOddEven [1, 3, 4, 5, 8, 9, 10]
  --   print $ subListLength [[1], [2], [3, 4, 5]]
  --   print $ findKelem [1, 2, 3, 4, 5, 6] 5
  --   print $ doubleAll [1, 2, 3]
  --   print $ insertAt [1, 2, 3, 4] 3 10
  print $ slice [1 .. 10] 2 4 -- Output: [3,4,5]