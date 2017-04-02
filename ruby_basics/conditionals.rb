#Unpredictable Weather (Part 1)
sun = ['visible', 'hidden'].sample 

if sun == 'visible'
  puts "The sun is so bright"
end 

#(Part 2)
unless sun == 'visible'
  puts "The clouds are blocking the sun"
end 

#(Part 3)
puts 'the sun is bright' if sun == 'visible'
puts 'the clouds are blocking the sun' unless sun == 'visible'
  
#True or False 
boolean = [true, false].sample 

boolean ? puts("I'm true") : puts("I'm false")

#Truthy Number 
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

#Stoplight (Part 1)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green' 
    puts "go"
  when 'yellow' 
    puts 'slow down'
  else 
    puts 'stop'
end 

#(Part 2)
if stoplight == 'green'
  puts 'go'
elsif stoplight == 'yellow'
  puts 'slow down'
else 
  puts 'stop'
end
  
#Sleep Alert 
status = ['awake', 'tired'].sample

alert = if status == 'awake'
          'be productive'
        else 
          'go to sleep'
        end 

puts alert 

#Cool Numbers 
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

#Stoplight (Part 3)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end

