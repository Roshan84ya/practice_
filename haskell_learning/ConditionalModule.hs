-- all if must have a else branch in haskell
module ConditionalModule where

myIfStatement :: Int -> Int
myIfStatement a = if a <= 2
    then a + 2
    else a - 2


-- the result has to be in same type for ifelse 
-- myIfStatement_ :: Int -> ???
-- myIfStatement_ a = if a <= 2
    -- then a + 2
    -- else "Hello"

-- one liner if else
myIfElse :: Int -> Int
myIfElse a = if a <=2 then a + 2 else a - 2


-- Multiple level ifelse

myIfElseMultiple :: Int -> Int
myIfElseMultiple a = if a <= 2 then a + 2 else if a <= 6 then a else a - 2

    
