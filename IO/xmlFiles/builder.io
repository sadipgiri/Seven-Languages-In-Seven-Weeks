Builder := Object clone

// to add spaces
Builder addSpace := 0

Builder forward := method(
  writeln(methodToAddSpace() .. "<", call message name, ">")

  addSpace = addSpace + 1

  call message arguments foreach(
	arg, 
	content := self doMessage(arg); 
	if(content type == "Sequence", writeln(methodToAddSpace() .. content)))
  
  addSpace = addSpace - 1

  writeln(methodToAddSpace() .. "</", call message name, ">")
 )

// creating a method to add spaces
 Builder methodToAddSpace := method(
 	space := ""
 	addSpace repeat(space = space .. " ")
 	return space
 )

Builder  ul(
	li("Io"), 
	li("Lua"), 
	li("JavaScript"))