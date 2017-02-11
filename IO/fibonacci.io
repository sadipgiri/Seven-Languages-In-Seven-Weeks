// to generate the fibonacci series
a := 1
b := 1

// getting the term from the user
term := File standardInput readLine asNumber()

// creating an empty list
fib := list()

// using loop to figure out the fibonacci series
for(i,1,term,
	fib append(a, b)
	a = a + b
	b = a + b
)

// now getting the required term from the fibonacci series
number := fib at(term - 1)

// finally printing it
writeln("The ", term, "th of the fibonacci series is ", number, ".")
