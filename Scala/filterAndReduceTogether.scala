// using filter and reduce together
// which is really cool

val numbers = List(1,2,3,4,5,2,1,3,4)

// to calculate the sum of the odd number 

val sumOfOddNumbers = numbers
	.filter((number) => (number % 2 != 0))
	.reduce((sum: Int, number: Int) => sum + number)

println (numbers)
println (sumOfOddNumbers)	

// this will definately make my life easier from now