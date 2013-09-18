module MDC where

import MDC_Utils
import Data.List
import System.Environment

--function to get the mean/avg of a list
avg :: [Double] -> Double
avg xs = sum xs / genericLength xs

--function to get the std deviation of a list
stdev :: [Double] -> Double
stdev xs = sqrt (avg sums)
                where sums = [ ((avg xs) - x)^2 | x <-xs ] -- list of (mean-xi)^2

--funciont to get a frequency table in a tuple, (freq, val)
freqtable :: [Double] -> [(Int, Double)]
freqtable xs = [ (genericLength x, head x) | x <- group(sortedlist)]  --returns a list of a 2 vaulued tuple: (frecuency, value)
                where sortedlist = sort xs

--funciton to get the mode of a list
mode :: [Double] -> Double
mode xs = snd max --returns the 2nd value of the maximum value in the list.
                where max = maximum (freqtable xs)

--function wrapper, returns [mean, std deviation, mode, N]) of a list.
mdc :: [Double] -> [Double]
mdc xs = [avg xs, stdev xs, mode xs, genericLength xs]
