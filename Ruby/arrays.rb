# Print the contents of an array of sixteen numbers, with four numbers per line.

numbers = [1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4]

# using each 
puts "This is using the each method" 
i = 0 
numbers.each do |item| 
	if i < numbers.length			# need to check else extra line will be printed
		print numbers[i..(i + 3)]	# print doesn't break the line 
		puts "" 					# but here we need line break			
	  	i = i + 4					# since we are printing 4 at a time so
	end	
end

# using each_slice
puts "This is using the each_slice method"
numbers.each_slice(4) {|a| p a}

