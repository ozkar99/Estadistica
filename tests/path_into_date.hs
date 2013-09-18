import MDC_Utils
import System.Environment

main = do
	args <- getArgs
	putStrLn $ (file2Date (head args))
	
