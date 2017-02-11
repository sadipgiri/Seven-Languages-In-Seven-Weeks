// using reduce to get something of the same type

// calculating the sum of the number by using the reduce method

val numbers = List(1,2,3,4,5)

val sum = numbers.reduce((total: Int, number: Int) => total + number)

println (numbers)
println ("Sum is: " + sum)