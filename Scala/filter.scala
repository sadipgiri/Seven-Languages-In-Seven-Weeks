// funcitonal programming topics

// use of filter method
// it will create a new list containing the same elements of the previous list
// the predicate for it should be true.

val numbers = List(5,3,4,8,0,2,5,4)

// inorder to define the predicate as true for the filter function
def isEven(number: Int): Boolean = {
	return (number % 2 == 0)
}

val filteredEvenNumbers = numbers.filter(isEven)

println(numbers)
println(filteredEvenNumbers)

// this is really cool as we don't need to write many lines of code