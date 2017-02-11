// wants to create a Tic-Tac-Toe Game

var myMatrix = Array.ofDim[String](3,3)

def playingInstructions{
	println("Welcome, lets play an interesting Tic-Tac-Toe Game.")
	println("Listen, to the instrustions very carefully.")
	println("This is 3 by 3 board for playing tic-tac-toe game where two players play together and the one who gets same 3 elements of the striaght line filled will win the game. ")
	println("Let's start the game.")
}

def instrustionsAfterShowingBoard{
	println("Now, you have seen the board where the first and second numbers show the row and column indexes respectively.")
}

def settingUpTheBoardStructure{
	for(i <- 0 to 2){
		for(j <- 0 to 2){
			myMatrix(i)(j) = (i+1) + "," + (j+1)
		}
	}
}

def printBoard{
	for(i <- 0 to 2){
		for(j <- 0 to 2){
			print("  " + myMatrix(i)(j))		
		}
		println()
		println()
	}
}

def askingPlayer1{
	print("player 1: give me the row's index: ")
	var player1Row = readInt 
	print("player 1: give me the column's index: ")
	var player1Column = readInt
	myMatrix(player1Row - 1)(player1Column - 1) = "XXX"
	printBoard
}

def askingPlayer2{
	print("player 2: give me the row's index: ")
	var player2Row = readInt 
	print("player 2: give me the column's index: ")
	var player2Column = readInt
	myMatrix(player2Row - 1)(player2Column - 1) = "OOO"
	printBoard
}



// This the function that will check the winner in the game

def checkArrayHasSameNumber(z: Array[String]): Boolean = {
	z.reduce((first, second) => if (first == second) first else "No" )
	z != "No"
}

def checkingWhoWonTheMatch{
	var firstRow:Array[String] = new Array[String](3)
	var secondRow:Array[String] = new Array[String](3)
	var thirdRow:Array[String] = new Array[String](3)
	var firstColumn:Array[String] = new Array[String](3)
	var secondColumn:Array[String] = new Array[String](3)
	var thirdColumn:Array[String] = new Array[String](3)
	var firstDiagonal:Array[String] = new Array[String](3)
	var secondDiagonal:Array[String] = new Array[String](3)
	for(i <- 0 to 2){
		firstRow(i) = myMatrix(0)(i)
		secondRow(i) = myMatrix(1)(i)
		thirdRow(i) = myMatrix(2)(i)
		firstColumn(i) = myMatrix(i)(0)
		secondColumn(i) = myMatrix(i)(1)
		thirdColumn(i) = myMatrix(i)(2)
		firstDiagonal(i) = myMatrix(i)(i)
		secondDiagonal(i) = myMatrix(i)(3-i)
	}

	if(checkArrayHasSameNumber(firstRow) == true || checkArrayHasSameNumber(secondRow) == true || checkArrayHasSameNumber(thirdRow) == true || checkArrayHasSameNumber(firstColumn) == true || checkArrayHasSameNumber(secondColumn) == true || checkArrayHasSameNumber(thirdColumn) == true || checkArrayHasSameNumber(firstDiagonal) == true || checkArrayHasSameNumber(secondDiagonal) == true){
		println("Hurray! You won the game.")
	}

}


playingInstructions
settingUpTheBoardStructure
printBoard
instrustionsAfterShowingBoard

for(i <- 0 to 4){
	askingPlayer1
	//checkingWhoWonTheMatch
	askingPlayer2
	//checkingWhoWonTheMatch
}
