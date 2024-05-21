-- Function to count the vowels in the string.

isVowel :: Char -> Bool
-- isVowel c = c `elem` "aeiouAEIOU"
isVowel c = elem c "aeiouAEIOU"

countVowels :: String -> Int
countVowels [] = 0
countVowels (x:xs)
    | isVowel x = 1 + countVowels xs
    | otherwise =  countVowels xs

main :: IO()
main = do
    let exampleString = "amma"
    print $ "number of vowels in " ++ exampleString ++ " is " ++ show(countVowels exampleString)