#Breakfast, Lunch, or Dinner? (Part 1)

def meal
  return 'Breakfast'
end

puts meal

#Breakfast, Lunch, or Dinner (Part 2)

def meal 
  'Evening'
end 

puts meal 

#Breakfast, Lunch, or Dinner (Part 3)

def meal 
  return 'Breakfast'
  'Dinner'
end 

puts meal 
#=>Breakfast 

#Breakfast, Lunch, or Dinner (Part 4)

def meal 
  puts 'Dinner'
  return 'Breakfast'
end 

puts meal 
# => Dinner
# => Breakfast

#Breakfast, Lunch, or Dinner (Part 5)

def meal 
  'dinner'
  puts 'dinner'
end 

p meal 
# => dinner
# => nil 

#Breakfast, Lunch, or Dinner (Part 6)

def meal 
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end 

puts meal 
# => Breakfast

#Counting Sheep

def count_sheep 
  5.times {|sheep| puts sheep}
end 

puts count_sheep 
# => 5 is the 6th number returned because it's part of the #times method

#Counting Sheep (Part 2)

def count_sheep 
  5.times {|sheep| puts sheep}
  10 
end 

puts count_sheep 
# => 10 is the 6th number returned because it's the implicit return value of the method defined
# because it's on the last line 

#Counting Sheep 

def count_sheep 
  5.times do |sheep| 
    puts sheep
    if sheep >= 2
      return
    end 
  end 
end 

p count_sheep
# => 0
# 1 
# 2 
# nil 

#Tricky Number 

def tricky_number 
  if true 
    number = 1 
  else 
    2 
  end 
end 

puts tricky_number
# => 1 

 
