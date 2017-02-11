import scala.collection.mutable.ArrayBuffer

val words = List("Apple", "Banana", "Pineapple", "Kiwi", "Pear", "Persimmon", "Blueberries", "Raspberries", "Blackberries")

type CharList = (Char, List[String])

def buildIndex(words: List[String]) : List[CharList] = {
	return words.map((word) => word
								.head).toSet.toList	// used .filter method to create array of firstCharacters
								.map((character:Char) => (character, words.filter((word) => (word.head == character))))	
}

def charListToString(charList : CharList) : String = {
	if (charList._2.isEmpty)
		return charList._1 + " -> ()"
	val listString = charList._2.reduceLeft((fullString, currString) => fullString + ", " + currString)
	return charList._1 + " -> (" + listString + ")"
}

val indexString = buildIndex(words)
	.map(charListToString)
	.foldLeft("Index: ")((fullString, currString) => fullString + "\n" + currString)
	println(indexString)