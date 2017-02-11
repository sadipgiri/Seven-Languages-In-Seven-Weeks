/*
Add a slot called myAverage to a list that computes the average of all the numbers in a list. Bonus: raise an exception if any item in the list is not a number.
*/

// creating a method to compute the average of the numbers in a list

myAverage := method(

  sum := 0				// to sum all the numbers of the list

  //using foreach to iterate through the list within

  self foreach(i, notANumber, 

  	// comparing the type of the entries given inside the list

  	if(notANumber type == "Number", sum = sum + notANumber, 
  		Exception raise(writeln(notANumber, " is not a Number"))
  	)

  )

  sum / (self size) // getting average by dividing total sum by size of the given list

)

"Should return 1.5" println

list(1,2) myAverage println // should return 1.5

"Should raise exception" println

list(1,a) myAverage println // should raise exception




