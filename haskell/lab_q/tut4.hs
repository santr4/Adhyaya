-- Function to zip elements from sublists

import Data.List (zipWith)

f :: [[a]] -> [[(a,a)]]
f xs = zipWith (zip) (tail xs) xs

main :: IO()
main = do
    print $ "to zip elements: " ++ show(f [["car", "paper", "table"], ["wheel", "pencil", "chair"]])