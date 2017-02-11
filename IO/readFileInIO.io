// Reading a file in IO language

f := File with("myTextFile.txt")	//search for the file with the given name

f openForReading	// then we have to open it for the reading using the openReading method

l := f readLine	// reading each and every line of the given file		

l println	// finally printing it or manipualting it for the required use