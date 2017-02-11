// Write
fileName := "sadipTextFile.txt"
file := File with(fileName)
file open
file write("Hello World!")
file write("Great! I am creating a file from IO language. Isn't it fabulous?")
file write("It's quite easy to create the file in IO just like we did in the Ruby language.")
file close