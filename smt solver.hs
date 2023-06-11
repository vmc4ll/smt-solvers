import Data.SBV


randomInt :: IO Integer
randomInt = randomRIO (0, 100)

main :: IO ()
main = do
    a <- randomInt
    b <- randomInt
    c <- randomInt

   
    satResult <- sat $ do
        
        a' <- sInteger "a"
        b' <- sInteger "b"
        c' <- sInteger "c"

       
        constrain $ a' + b' .> c'
