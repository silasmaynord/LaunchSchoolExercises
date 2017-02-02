#Rewrite your program from exercise 3 using a case statement. Wrap
# the statement from exercise 3 in a method and wrap this new case
# statement in a method. Make sure they both still work.

def evaluate_num(num)
  if num < 0
    puts "You can't enter a negative number"
  elsif num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

def evaluate_case1_num(num)
  case 
  when num < 0 
    puts "You can't enter a negative number"
  when num <= 50 
    puts "#{num} is between 0 and 50"
  when num <= 100 
    puts "#{num} is between 51 and 100"
  else 
    puts "#{num} is over 100"
  end
end 

def evaluate_case2_num(num)
  case num 
  when 0..50 
    puts "#{num} is between 0 and 50"
  when 51..100 
    puts "#{num} is between 51 and 100"
  else 
    if num < 0 
      puts "You can't enter a negative number"
    else 
      puts "#{num} is above 100"
    end 
  end 
end 


puts "Pick a number between 1 and 100:"
num = gets.chomp.to_i 

evaluate_num(num)
evaluate_case1_num(num)
evaluate_case2_num(num)