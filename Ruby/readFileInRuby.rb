# Now reading a file through Ruby
# r means reading 

words = [] # creating an empty array of words so that I can add those words from the file name myFile2

file = File.open("./myFile2", "r")

while (line = file.gets) 	# pulling the first line fron the line 
	words << line     		# until no more lines left it will iterate
end

file.close					# need to close the file

words.each {|l| puts l}		# for printing these to the screen


# similarly lets read the file named myFile1 which I wrote previously

lines = [] 					# creating an array to read and put those line in this array so that we can manipulate it

file = File.open("./myFile2", "r") # here I am opening different file

while (line = file.gets)	# it helps to iterate through every lines of the file until it finds 
	lines << lines			# this helps to enter those lines in the array
end

file.close					# need to close the file

lines.each{|l| puts l}		# this is for printing out the those lines from the file in the screen