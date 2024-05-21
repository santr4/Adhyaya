-- Function to count odd and even elements in the array.

-- countOE :: [Int] -> (Int, Int)
-- countOE [] = (0,0)
-- countOE xs = 
--     let evens = length[x | x <- xs, even x]
--         odds = length xs - evens
--     in (evens, odds)

-- main :: IO()
-- main = do
--     print $ "the count of odd and evens in the list is: " ++ show(countOE [1,5,6,7,8]) 

-- using foldl function

-- countOE :: [Int] -> (Int, Int)
-- countOE xs = foldl (\(evencount, oddcount) x -> if even x then (evencount+1, oddcount) else (evencount, oddcount+1)) (0,0) xs

-- main :: IO()
-- main = do
--     print $ "the count of odd and evens in the list is: " ++ show(countOE [1,5,6,7,8]) 

countOE :: [Int] -> (Int, Int)
countOE [] = (0,0)
countOE (x:xs) = 
    let (evencount, oddcount) = countOE xs
    in if even x then (evencount+1, oddcount)
       else (evencount, oddcount+1)


main :: IO()
main = do
    print $ "the count of odd and evens in the list is: " ++ show(countOE [1,5,6,7,8]) 