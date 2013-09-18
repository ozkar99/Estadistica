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
	   let fileDate = file2Date(head args) --get the date from the file structure path.
	   putStrLn $ fileDate++","++commaSeparate(mdc ([1,2,3,4,5]::[Double]))
	
