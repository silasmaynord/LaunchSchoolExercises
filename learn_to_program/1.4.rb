#99 Bottles of Beer on the Wall
bottles_of_beer = 99
while bottles_of_beer > 0 
  puts "#{bottles_of_beer} bottles of beer on the wall!"
  puts "#{bottles_of_beer} bottles of beer!"
  puts "You take one down, and pass it around!"
  bottles_of_beer -= 1
  puts "#{bottles_of_beer} bottles of beer on the wall!"
end

#I like this one. I tried putting the 6th line of code 
#into the curly brackets of the 7th line, but it was 
#unrecognizable in irb.


#Deaf Grandma (Part 1)
puts "HELLO THERE SONNY! GIVE GRANNY A KISS!"
while true
  said = gets.chomp 
  if said == 'BYE'
    puts "BYE SWEETIE!"
    break
  end 
  if said != said.upcase 
    puts "H'WAT DID YOU SAY?"
  else 
    random_year = 1929 + rand(21)
    puts "NOT SINCE #{random_year}!"
  end 
end 

#or

while true 
  said = gets.chomp
  break if said == 'BYE'
  response = if said != said.upcase
    'WHAT DID YOU SAY'
  else
    "NO, NOT SINCE #{1929 + rand(21)}!"
  end
  puts response
end 

#(Part 2)
puts "HELLO SONNY" 
bye_count = 0
while true 
  said = gets.chomp
  if said == 'BYE'  
    bye_count += 1
  else 
    bye_count  = 0 
  end 
  break if bye_count >= 3

  response = if said != said.upcase 
    "WHAT DID YA SAY"
  else 
    "NO, NOT SINCE #{1929 + rand(21)}"
  end 
  puts response
end  

puts "BYE SONNY"

#Leap Year 
puts "Starting year?"
start_year = gets.chomp.to_i
puts "End year?"
end_year = gets.chomp.to_i

leap_years = []
if start_year % 4 == 0  
  leap_years << start_year
end 
if end_year % 4 == 0 
  leap_years << end_year
end

loop do 
  year_evaluation = start_year
  loop do
    year_evaluation += 4
    if year_evaluation % 4 == 0 
      leap_years << year_evaluation
    break if year_evaluation >= end_year
    end
  end
end  

puts leap_years

#Not sure if the above would work
start_year = year 
while year <= end_year
  if year % 4 == 0 
    if year % 100 != 0 || year % 400 == 0 
      puts year 
    end 
  end 
  year = year + 1 
end 

#or 
(start_year..end_year).each do |year| 
  next if year % 4 != 0 
  next if year % 100 == 0 && year % 400 != 0 
  puts year 
end 