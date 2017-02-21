puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp 

puts "Hello, #{first_name} #{middle_name} #{last_name}."

puts "What's your favorite number?"
fav_num = gets.chomp.to_i
new_fav = fav_num + 1
puts "While I like #{fav_num}, #{new_fav} is BIGGER AND BETTER!"

