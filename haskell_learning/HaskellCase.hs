module HaskellCase where

myCaseFunction :: [Int] -> Int
myCaseFunction xs = case xs of
    [a]         -> a + 3
    [a, b]      -> a + b + 1
    (1 : 2 : _) -> 3
    (3 : 4 : _) -> 7
    xs          -> length xs

-- Note that we used '->' instead of = 

-- Here we will be passing two argument
    -- 1st one will be of bool type
    -- 2nd one will be of List type
    -- return type will be an int
myCaseFunction' :: Bool -> [Int] -> Int
myCaseFunction' boolValue xs = if not boolValue
    then length xs
    else case xs of
        [a] -> a + 3
        [a, b] -> a + b + 1
        (1 : 2 : _) -> 3
        (3 : 4 : _) -> 7
        _ -> 1