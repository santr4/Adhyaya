import Distribution.Compat.CharParsing (CharParsing (char))

bmicalculator :: Float -> Float -> String
bmicalculator weight height =
  let bmi = weight / (height * height)
   in if bmi < 18.5 then "Underweight" else if bmi >= 18.5 && bmi < 25 then "Normal weight" else if bmi >= 25 && bmi < 30 then "Overweight" else "Obese"

charType :: Char -> String
charType c
  | c `elem` "aeiouAEIOU" = "vowel"
  | otherwise = "consonant"

main = do
  --   print $ bmicalculator 87.5 175
  print $ charType 't'