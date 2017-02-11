// guess the number 

// Here, I am going to make the guessing game accoding to the Binary Search Technique. That is, user have to guess intuitively according to the computer saying whether it's low or high.
// Number of chances give to user depends on the log of the range user chooses

"Starting from 1, upto what number do you want to guess?" println
range := File standardInput readLine  // getting the user inputs upto which user wants to play

numberOfTriesLeft := 0  // creating a variable to track the attempts user made to guess the correct guess

totalGuessesYouCanHave := range asNumber() log2 round  // this the total chances user can have which is calculated according to the concept of Binary Search Technique Algorithms


writeln("Great! you will be guessing from 1 to ", range)
writeln("You need to guess the correct number in ",totalGuessesYouCanHave, " guesses.")
"Let's start!" println

randomNumber := Random value(range asNumber()) ceil  // generating the random number
	
// creating a method for giving some information of the game to the players who played this game	
knowTheGameTrick := method(
	"Do you wanna know the trick of this game?" println
	"If YES then type 1 and if NO then type 2." println
	userAnswer := File standardInput readLine

	if (userAnswer asNumber() == 1) then (
		"This game is designed according to halving technique (can also be called as Binary Search) where you are given only certain chances." println

		"Since computer says you whether the guessed number was high or low, you have to always guess the middle number and go on guessing the middle number everytime the range changes." println) else ("I guess, you probably knew the trick of the game. Thanks for playing. Enjoy!" println
		)
)
	

// looping until user guesses the correct answer (according to the chances left)
while (numberOfTriesLeft <= totalGuessesYouCanHave, 
	
	"Guess your number" println
	userGuess := File standardInput readLine asNumber()  // getting the user guess number

	// applying different conditions

	if (userGuess == randomNumber) then (
		"Hurray! Your guess is correct" println
		knowTheGameTrick  // calling method to give more information about the game

		break)

	if (userGuess > randomNumber) then ("You are guessing high" println) else ("You are guessing low" println)

	numberOfTriesLeft = numberOfTriesLeft + 1  // increasing the number of tries everytime user guesses it
  
)

if (numberOfTriesLeft > totalGuessesYouCanHave) then (

	writeln("You tried for ", numberOfTriesLeft, " times but you'd not guess correctly.")

	writeln("However, the correct guess was ", randomNumber)

	knowTheGameTrick
	)
