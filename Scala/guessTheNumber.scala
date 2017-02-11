// guess the number

print("Here, I am creating really simple guess the number game. However, if you wanna play interesting and little bit challenging where you can choose your range also then go to my Ruby or IO projects. Thanks for chaecking out.")
print("let's play guess the number game.")
print(" Guess the number from 0 to 10: ")

var randomNumber = scala.util.Random.nextInt(11) 	// creating a random number from 1 to 10.

var break = false									// creating a break boolean for breaking the while loop when it's done.

while(break == false){								// checking the boolean
	print("Guess the number: ")
	var userGuess = readInt							// getting the guessed number from the user

	if(userGuess > randomNumber){
		println("You are guessing HIGH.")
	}else if(userGuess < randomNumber){
		println("You are guessing LOW.")
	}else{
		print("Great!, you are correct.")
		break = true								// breaking the while loop when user guesses the correct answer
	}
}