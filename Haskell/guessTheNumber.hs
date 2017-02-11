-- Guess the number game in Haskell

--Haskell syntaxes were so much difficult that I had to take the references from the internet


-- for creating random number
import System.Random
 
main = randomRIO (1,10) >>= looping 						-- guesses from 1 to 10
 
looping :: Int -> IO ()					

looping randomGuess = do	

	userGuess <- fmap read getLine							-- reading user guess

	if userGuess == randomGuess 							-- checking if its correct

	  then putStrLn "Great! you gueesed the correctly."  	-- printing the statement
	  else putStrLn "No, it's not the correct guess. Do you wanna try again? Go for it!" >> looping randomGuess -- if not then looping since user makes the correct guess
 