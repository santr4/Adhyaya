-- Function to check if the list is palindrome or not.

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrom x = reverse x == x

exampleList :: [Int]
exampleList = [1,2,2,1]

anotherExampleList :: [Int]
anotherExampleList = [2,3,4]

main :: IO()
main = do
    print $ "is it palindrome or not? : " ++ show(isPalindrom exampleList)
    print $ "is it palindrome or not? : " ++ show(isPalindrom anotherExampleList)