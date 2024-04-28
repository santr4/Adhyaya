import Data.Bool (bool)

traingleType :: Int -> Int -> Int -> String
traingleType a b c
  | a == b && b == c = "Equilateral"
  | a == b || b == c || c == a = "Isosceles"
  | otherwise = "scalene"

boolToInt :: Bool -> Int
boolToInt True = 1
boolToInt False = 0

intToBool :: Int -> Bool
intToBool 0 = False
intToBool _ = True

isLeapYear :: Int -> Bool
isLeapYear year =
  if (year `mod` 4 == 0) && (year `mod` 100 /= 0 || year `mod` 400 == 0) then True else False

main = do
  --   print $ traingleType 1 7 3
  --   print $ boolToInt True
  --   print $ intToBool 100
  print $ isLeapYear 2024
