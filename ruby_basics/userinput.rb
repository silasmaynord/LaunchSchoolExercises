#Repeat after me

puts "Hey there user"
input = gets 
puts input 

#Your age in months 

puts "What's your age in years?"
input = gets
age_in_months = input.to_i * 12 
puts "You are #{age_in_months} months old." 

#Print Something (Part 1)

puts "Want to print something? (y/n)"
input = gets.chomp
puts "something" if input.downcase == y 
puts nil if input.downcase == n 
puts "Invalid Input" if input.downcase != y or n 

#(Part 2)

choice = nil 
loop do 
  puts "Want to print something? (y/n)"
  choice = gets.chomp.downcase 
  break if %w(y n).include?(choice)
  puts "Invalid Input"
end 
puts 'something' if choice == 'y'

#Launch School Printer

number_of_lines = nil 
loop do 
  puts "How many lines do you want to output? (Enter a number >= 3)"
  number_of_lines = gets.chomp.to_i
  break if number_of_lines >= 3
  puts "NOT ENOUGH LINES"
end 

while number_of_lines > 0 
  puts 'Launch School is the best'
  number_of_lines -= 1 
end 

#Passwords 

PASSWORD = "doot doot doot doot" 
loop do 
  puts "Please enter your password, John Cena" 
  input = gets.chomp 
  break if input == PASSWORD
  puts "You need more calcium"
end  

puts "Thank"

#Username and Password 

USERNAME = JohnCena
PASSWORD = "doot doot doot doot"
loop do 
  puts "Please enter your username."
  user_name = gets.chomp.downcase 
  puts "Please enter your password"
  password_try = gets.chomp 
  break if user_name == USERNAME && password_try == PASSWORD
  puts "Not enough calcium"
end 

#Dividing Numbers 

def valid_number?(number_string)
  number_string.to_i.to_s == number_string 
end 

numerator = nil 
loop do 
  puts "Enter the numerator"
  numerator = gets.chomp 
  break if valid_number?(numerator)
  puts "Integers only"
end 

denominator = nil 
loop do 
  puts "Enter the denominator"
  denominator = gets.chomp 
  
  if denominator == '0'
    puts "Denominators of zero not allowed"
  else
    break if valid_number?(denominator)
    puts "Integers only"
  end 
end 

result = numerator.to_i / denominator.to_i 

puts "#{numerator} / #{denominator} is #{result}"

#Launch School Printer (Part 2)

loop do 
  input_string = nil
  number_of_lines = nil
  
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3:'
    
    input_string = gets.chomp.downcase 
    break if input_string == 'q'
    
    number_of_lines = gets.to_i
    break if number_of_lines >= 3
    
    puts ">> That's not enough lines."
  end

  break if input_string == 'q' 

  while number_of_lines > 0 
    puts 'Launch school is the best'
    number_of_lines -= 1 
  end
end 

#Opposites Attract 

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do 
    puts 'please enter a positive or negative integer'
    number = gets.chomp 
    return number.to_i if valid_number?(number)
    puts 'only non zero integers allowed'
  end
end 

first_number = nil 
second_number = nil 

loop do 
  first number = read_number 
  second_number = read_number
  break if first_number * second_number < 0 
  puts 'sorry. one must be positive, one must be negative'
  puts 'please start over'
end 

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}" 





