module PatternMatching where

{-
defination says it will take and list of int and return an int
-}

myPattern :: [Int] -> Int
myPattern [a]           = a + 3         -- when length of list will be one it will return one elemtn + 1
myPattern [a, b]        = a + b + 1     -- when length of list will be two it will return sum(list) + 1
myPattern (1 : 2 : _)   = 3             -- when list will start with (1, 2, ...)
myPattern (3 : 4 : _)   = 7             -- when list will start with (3, 4, ...)
myPattern xs            = length xs     -- otherwise any list

-- Note the order of the condtion matters while evluating any expression