#Using the hash you created from the previous exercise, 
#demonstrate how you would access Joe's email and Sally's phone number?

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# #{contacts[top level key][nested key]}