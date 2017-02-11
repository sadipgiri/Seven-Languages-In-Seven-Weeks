// lets do combination of three functions that are .filter, .reduce and .map
// lets find sum of square of the odd numbers of the list

val numbers = List(1,2,3,4,5,6,7,8,9,10)

val sumOfSquareOddNumbers = numbers
	.filter((number) => (number % 2 != 0))
	.map(number => (number * number))
	.reduce((total:Int, number:Int) => (total + number))

println(sumOfSquareOddNumbers)

// so less codes : I really liked the functional programming thingy
