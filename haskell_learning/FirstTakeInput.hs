module FirstTakeInput where

main :: IO ()
main = do
    putStrLn "Enter Your Name!"
    name  <- getLine
    let message = "Hii " ++ name ++ "!"
    putStrLn message