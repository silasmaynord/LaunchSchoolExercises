#Conditional Loop

process_the_loop = [true, false].sample

if process_the_loop 
  loop do 
    puts "The loop was processed"
    break 
  end
else 
  puts "The loop wasn't processed"
end

#Get the Sum

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct."
    break
  end

  puts "That's not correct. Try again."
end

#Insert Numbers

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  
  numbers.push(input)
  break if numbers.size == 5   
end
puts numbers

#Empty the Array 

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do 
  puts names.shift
  break if names.empty?
end 

#Stop Counting 

5.times do |index| 
  puts index 
  break if index == 2 
end 

#Only Even

number = 0 

until number == 10 
  number += 1 
  next if number.odd?
  puts number 
end 

#First to Five

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5 

  puts '5 was reached'
  break
end

#Greeting 

def greeting 
  puts 'hello'
end 

number_of_greetings = 2 

while number_of_greetings > 0 
  greeting 
  number_of_greetings -= 1 
end 

