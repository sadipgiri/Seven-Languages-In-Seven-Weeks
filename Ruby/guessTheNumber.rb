# guess the number 

# Here, I am going to make the guessing game accoding to the Binary Search Technique. That is, user have to guess intuitively according to the computer saying whether it's low or high.
# Number of chances give to user depends on the log of the range user chooses

puts "Starting from 1, upto what number do you want to guess?"
range = gets  # getting the user inputs upto which user wants to play

numberOfTriesLeft = 0  # creating a variable to track the attempts user made to guess the correct guess

totalGuessesYouCanHave = (Math.log2(range.to_i)).to_i  # this the total chances user can have which is calculated according to the concept of Binary Search Technique Algorithm

puts "Great! you will be guessing from 1 to #{range}."
puts "You need to guess the correct number in #{totalGuessesYouCanHave} guesses."
puts "Let's start!"

randomNumber = rand(1..(range.to_i))  # generating the random number
	
# creating a method for giving some information of the game to the players who played this game	
def knowTheGameTrick
	puts "Do you wanna know the trick of this game?"
	puts "If YES then type 1 and if NO then type 2."
	userAnswer = gets

	if userAnswer.to_i == 1
		puts "This game is designed according to halving technique (can also be called as Binary Search) where you are given only certain chances."
		puts "Since computer says you whether the guessed number was high or low, you have to always guess the middle number and go on guessing the middle number everytime the range changes."
	else
		puts "I guess, you probably knew the trick of the game. Thanks for playing. Enjoy!"
	end

end

# looping until user guesses the correct answer (according to the chances left)
while numberOfTriesLeft <= totalGuessesYouCanHave 
	
	puts "Guess your number"
	userGuess = gets.to_i  # getting the user guess number

	# applying different conditions

	if userGuess == randomNumber  
		puts "Hurray! Your guess is correct"
		knowTheGameTrick  # calling method to give more information about the game
		break
	elsif userGuess > randomNumber
		puts "You are guessing high"
	else
		puts "You are guessing low"
	end

	numberOfTriesLeft = numberOfTriesLeft + 1  # increasing the number of tries everytime user guesses it
  
end

if numberOfTriesLeft > totalGuessesYouCanHave
	puts "You tried for #{numberOfTriesLeft} times but you'd not guess correctly." 
	puts "However, the correct guess was #{randomNumber}."
	knowTheGameTrick
end
