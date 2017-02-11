// add the operator ! which recursively calculates a factorial 

OperatorTable addOperator("!", 11)

// getting the factorial of a number using the recursive technique
factorial := method(number,
	if(number == 0) then (return 1)

	else(

		// this is when you use the looping for finding the factorial of a number

		/*factorial := 1
		for(i, 1, number, 
			factorial = factorial * i
		)
		return factorial*/

		// Awesome, recursive method is used to find the factorial which is calling the method itself

		return number * factorial(number - 1)
	)
)

Number ! := method(factorial(self))	// using the operator to construct the use of factorial in a number using exclamation sign GREAT!

"10! is equal to: " println
10! println							// nice, typing 5! will give us factorial of 5
