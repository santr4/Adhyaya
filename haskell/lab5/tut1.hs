-- Function to get first element in the list
myhead :: [a] -> a
myhead (x:_) = x
myhead [] = error "myhead: empty list"

-- Function to get list without first element
mytail :: [a] -> [a]
mytail (_:xs) = xs
mytail [] = error "mytail: empty list"

-- Function to get list without last element
myinit :: [a] -> [a]
myinit [] = error "myinit: empty list"
myinit [_] = []
myinit (x:xs) = x : myinit xs

-- Function to return the last element of the array
mylast :: [a] -> a
mylast [] = error "mylast: empty list"
mylast [x] = x
mylast (_:xs) = mylast xs

-- Function to return the length of the list
mylength :: [a] -> Int
mylength [] = 0
mylength (_:xs) = 1 + mylength xs

exampleList :: [Int]
exampleList = [1,2,3,4,5]

main :: IO()
main = do
    print $ "myhead exampleList: " ++ show(myhead exampleList)
    print $ "mytail exampleList: " ++ show(mytail exampleList)
    print $ "myinit exampleList: " ++ show(myinit exampleList)
    print $ "mylast exampleList: " ++ show(mylast exampleList)
    print $ "mylength exampleList: " ++ show(mylength exampleList)