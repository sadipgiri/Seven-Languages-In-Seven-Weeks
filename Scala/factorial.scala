

def factorial(n:Int) : Int = {
	if (n == 1){
		return 1
	}else{
		return n * factorial(n - 1)
	}
}

println(factorial(30))