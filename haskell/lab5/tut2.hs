-- Function to give second last in the list.
secondLast :: [a] -> a
secondLast [] = error "secondLast cannot be found in emptylist"
secondLast [_] = error "secondLast cannot be found in one item list"
secondLast [x, _] = x
secondLast (_:xs) = secondLast xs

exampleList :: [Int]
exampleList = [1,2,3,4,5]

main :: IO()
main = do
    print $ "secondLast element in the array: " ++ show(secondLast exampleList)