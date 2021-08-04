module RevisionPrev where

-- this will file will about to revsision that we did till now


-- let's start with print

main :: IO ()
main =  do
    putStrLn "This is print test"

-- conditional statements

ifElse :: Int -> Int
ifElse a = if a <= 10 
    then a + 2
    else a - 2

-- Remember the return type of ifelse should be same
-- every if must has to have one else
-- then can be written in one line also

-- Guards

myGuard :: Int -> Int
myGuard a
    | a <= 2    = a + 2
    | a <= 6    = a + 4
    | otherwise = a - 2 
-- in guards every expressions has their own = sign 
-- instead of else we use otherwise here for all other cases
{-
Exception: RevisionPrev.hs:(26,1)-(28,23): Non-exhaustive patterns in function myGuard
this error will come when some case/patten is not handled in our function
-}