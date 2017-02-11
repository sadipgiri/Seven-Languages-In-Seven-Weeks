val sentence = "Hi, you shoot and darn guy."
val words =  sentence.split(" +")				// creating an array of those words
val newCensoredSentence = words.filter((word) => (word != "shoot" || word != "darn"))	// filtering those words

println(sentence)
println(words)
println(newCensoredSentence)