; guess the number

; let's get the random value from 1 to 10 

(def randomNumber (inc (rand-int 10)))

; Now, giving user the chance to guess it till they correctly guess that number

(loop [i 0]
	(println "Hi, let's play guess the number game: ")
	(println "Guess the number from 1 to 10: ")
	(let [userGuess (read)]
		(if (= userGuess randomNumber)
			(println "Wow, You are correct!")
			(do
				(println "Nope, You are not correct, try again: ")
				(recur (inc i))
			)
		)
	)
)