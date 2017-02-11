;Implement a function called (big string number) 
;that returns true if a string is longer then number of characters

; defining a function:
(defn 
	big 
	[input guessingLength] 
	(> (count input) guessingLength)	;checking the length of the string given with exact one and returning the Boolean value
)

; now checking it

(println (big "Sadip" 9))	; should return False
(println (big "Hello" 5))	; should return True