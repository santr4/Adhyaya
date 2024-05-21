-- Function to give the first element of the pair everytime

getFirst :: [(a,b)] -> [a]
getFirst [] = []
getFirst ((x,_):xs) = x : getFirst xs

myList :: [(Int,Int)]
myList = [(1,2),(3,4),(5,6)]

main :: IO()
main = do
    print $ "the first components of every pair is: " ++ show(getFirst myList)