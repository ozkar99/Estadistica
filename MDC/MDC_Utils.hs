module MDC_Utils where
import Data.List
import Data.List.Split

--function to coma separate values, from a list containing doubles
commaSeparate :: [Double] -> String
commaSeparate xs = concat . intersperse "," . map show $ xs

--convert from list of strings to list of doubles
string2Double :: [String] -> [Double]
string2Double xs = [ fst (head (reads x :: [(Double, String)])) | x <- xs] --reads return a list of a tuple with fst value double.

--grab a string like */2013/09/14.txt and return 2013-09-14
--split string in / to a list
--grab the last 3 / of the list
--concatenate with - the last 3 
file2Date :: String -> String
file2Date xs = concat . intersperse "-" . map (take 4) $ listdate
		where listdate = reverse( take 3 (reverse splitlist) )
			where splitlist = splitOn "/" xs

