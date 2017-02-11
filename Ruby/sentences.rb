# printing ten sentences 

# using .times method
puts "Printing sentences using the times method"

10.times do |x|
	puts "This is sentence number #{x+1}"
end

# using the loop
puts "Printing the sentences using for loop"
for i in 1..10
	puts "This is sentence number #{i}"
end