-- Function to count vowels in the string

countVowels :: String -> Int
countVowels [] = 0
countVowels str = 
    let vowels = ['a', 'e', 'i', 'o', 'u']
        isVowel ch = elem ch vowels
    in length (filter isVowel str)

main :: IO()
main = do
    print $ "the number of vowels in the string: " ++ show(countVowels "hello world")