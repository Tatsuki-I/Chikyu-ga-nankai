module Main where

import ChikyuGaNankai
import Data.Time.Clock
import Data.Time.Calendar

main :: IO ()
main =  do t <- getCurrentTime
           putStrLn $ "今日は"
                      ++ (nengappi . toGregorian  . utctDay) t
                      ++ "\nUNIXエポックから地球が"
                      ++ show (chikyuGaNankai t)
                      ++ "回回った日です"
