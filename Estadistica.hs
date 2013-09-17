--Author: Oscar Moreno Garza
--This code is intended to compute a bunch of means,modes and standard deviations.
import System.Environment
import MDC
import MDC_Utils

--Main:
main = do
	args <- getArgs
	--are values ok?
	if (length args) /= 2 
	  then do
  	   putStrLn $ "MDC [inputfile] [outputfile]"
	  else do	
	   putStrLn $ "2013-09-28," ++ commaSeparate(mdc (string2Double args) )
	
