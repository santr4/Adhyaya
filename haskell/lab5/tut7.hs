-- Function to remove the Nth element from the list

-- removeNth :: Int -> [a] -> [a]
-- removeNth n [] = []
-- removeNth n xs | n == 1 = tail xs
--                | otherwise = head xs : removeNth n (tail xs)

-- myList :: [Int]
-- myList = [1,2,3,4,5]

-- main :: IO()
-- main = do
--     print $ "after removing nth elements from the list: " ++ show(removeNth 2 myList)


-- Function to split the list into first elements
splitList :: [a] -> Int -> [[a]]
splitList xs n
    | n <= 0 || null xs = []
    | length xs <= n = [xs]
    | otherwise = let (first, rest) = splitAt n xs
                  in first : splitList rest n

main :: IO()
main = do
    print $ "the new list: " ++ show(splitList [2,6,3,6,8,2,5,6,5] 6)