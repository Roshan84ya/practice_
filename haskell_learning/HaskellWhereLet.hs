module HaskellWhereLet where

-- here the function is having three argument

mathFunctionWhere :: Int -> Int -> Int -> Int
mathFunctionWhere a b c = (c - a) + (b - a) + (a * b * c) + a

-- the output / result expression  of this can be look messy
-- so we can use an variable instead to which we can assing those expressions

mathFunctionWhere' :: Int -> Int -> Int -> Int
mathFunctionWhere' a b c = exp1 + exp2 + exp3 + a
    where
        exp1 = c - a
        exp2 = b - a
        exp3 = (a * b * c)

-- Note are the exp1, exp2, exp3 is already a intermeddiate expression so there
-- decalration order does not matters. In haskell whatever expression we writeFile haskell accepts that expression without thwoing any error until we use that expression then it checks where is that expression is being defined
mathFunctionWhere'' :: Int -> Int -> Int -> Int
mathFunctionWhere'' a b c = exp1 + exp2 + exp3
    where
        exp1 = a + exp2
        exp2 = b + c + c
        exp3 = exp1 * c

-- Make sure you don't make any loops there
-- this is more like a sql syntax


-- Let

-- whatever we did so far we can have the same thing with the let but here in let we define expressions first and then the and we will be using keyword in to signla the expressuin that will use the values
mathFunctionLet :: Int -> Int -> Int -> Int
mathFunctionLet a b c = 
    let exp1 = a + b
        exp2 = b + c
        exp3 = a * b * c
    in exp1 + exp2 + exp3
        
