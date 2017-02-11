// using foldleft

val numbers = List(1,2,3,4,3)

val numbersString = numbers.foldleft("numbers: ")((currString, number) => currString + number.toString + " ")

println(numbersString)