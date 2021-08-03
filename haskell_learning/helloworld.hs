-- compile the file with ghc filename.hs
-- rune the compiled file with ./filename (without hs)
-- OR
-- runhaskell filename.hs

-- here the first line is indication about defnation to the main indicating
-- main is the type IO which computes the value of type () (read unit, an emplty tuple)
main :: IO ()
main = putStrLn "Hello, World!"