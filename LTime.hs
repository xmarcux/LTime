{-|
Module      : Start of program
Description : Calculates Lydia time.
Copyright   : (C) Marcus Pedersén, 2014

License     : GPLv3
Maintainer  : marcux@marcux.org
Stability   : Stable
Portability : Portable
Version     : 1.0

Calculates the time between now and the birth of
Lydia Pedersén Bohman in seconds.
-}

module Main where

import System.Time

{-|
Main function.
Start of program.
-}
main :: IO ()
main = do
       right <- readFile "copyright"
       putStrLn right
       putStrLn "***********************************"
       putStrLn "Current time in LTime (Lydia time):"
      
       TOD sec pic <- calcTime
       putStrLn $ (show sec) ++ " seconds of Lydia"
       putStrLn "***********************************"
       putStrLn ""

{-|
Calculates the time difference 
between now and birth time for
Lydia Pedersén Bohman.
-}
calcTime :: IO (ClockTime)
calcTime = do
           timeNow <- getClockTime
           return (addToClockTime (diffClockTimes timeNow lTime) (TOD 0 0))
           where
               lTime = toClockTime (CalendarTime 2014 September 11 0 17 0 0 Thursday 0 "" 0 False)
