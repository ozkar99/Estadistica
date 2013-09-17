import MDC_Utils
import System.Environment

main = do
	args <- getArgs
	if ( length args ) /= 2
   	  then do
		putStrLn $ "nope"
	  else do
		putStrLn $ (file2Date (head args))
	
