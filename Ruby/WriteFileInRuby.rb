# creating a file and writing in it.

# "w" stands for writing a file in file named myFile1
# here, I am just printing some lines in the file
f = File.new("./myFile1","w")
f.puts ("Hello World")
f.puts ("Hey, currently I am writing a file through Ruby.")
f.puts ("Isn't it cool?")
f.close 


# here, I am creating an array inside the file in file named myFile2
words = ["Plants", "Zombies", "Fuzzy", "Bunny", "Moko", "Oliver"]
f = File.new("./myFile2", "w")
words.each {|word| f.print(word + " ")}
f.close
