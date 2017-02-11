# creating the hash in Ruby
hash = Hash.new
hash['Hello'] = "World"
hash['Name'] = "Sadip Giri"
hash['College'] = "Bennington College"
hash['Recent Programming Language'] = "Ruby on Rails"

puts hash

# and iterating through the hasehes in Ruby
hash.each do |key, value|
	puts "I am in key '#{key}' and its value is '#{value}'."
end
