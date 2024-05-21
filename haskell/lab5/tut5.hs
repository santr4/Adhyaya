-- Function to check if the array is in ascending order

isSort :: Ord a => [a] -> Bool
isSort [] = True
isSort [_] = True
isSort (x:y:xs) = x <= y && isSort (y:xs)

myList :: [Int]
myList = [1,3,2,5]

sortedList :: [Int]
sortedList = [1,2,3,4,5]

main :: IO()
main = do
    print $ "list is sorted or not = " ++ show(isSort myList)
    print $ "list is sorted or not = " ++ show(isSort sortedList)