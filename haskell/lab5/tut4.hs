-- Function to get the sum of all odd element in the array

isOdd :: Int -> Bool
isOdd n = n `mod` 2 /= 0

sumOdd :: [Int] -> Int
sumOdd [] = 0
sumOdd (x:xs)
    | isOdd x = x + sumOdd xs
    | otherwise = sumOdd xs

-- Function to double all the elements in the array
doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x:xs) = (2 * x) : doubleAll xs

exampleList :: [Int]
exampleList = [1,2,3,4,5]

main :: IO()
main = do
    print $ "the sum of odd elements in the array: " ++ show(sumOdd exampleList)
    print $ "double the elements in the array: " ++ show(doubleAll exampleList)

