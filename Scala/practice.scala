// while loop in Scala
def whileLoop{
	var i = 1
	while(i <= 5){
		println(i)
		i = i + 1
	}	
}

whileLoop		// calling the function whileloop which is defined above. This kind of method is useful as we can easily define large chunck of things in one function

println("Ok lets try to print each and every alphabet of the word given")

var given = "a1b346"
for(i <- given){
	var number = i.toInt
	println(i)
}
println(s)