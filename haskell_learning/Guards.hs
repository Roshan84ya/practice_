-- In Guards is basically kind of switch case and they are more readable
-- you can put any number of conditions in the guard
module Guards where
myGuardStatement :: Int -> Int
myGuardStatement a
    | a <= 2 = a + 2
    | a <= 6 = a
    | otherwise = a - 2

{-
We don't use else in guards instead we use otherwise
each individual has their own = 

-}


