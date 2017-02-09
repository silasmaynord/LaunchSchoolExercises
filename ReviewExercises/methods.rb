#Greeting Through Methods (Part 1)

def hello
  'Hello'
end 

def world
  'World'
end 

puts "{#{hello} #{world}}"

#Greeting Through Methods (Part 2)

def hello
  'Hello'
end 

def world
  'World'
end 

def greet 
  hello + " " + world 
end 

puts greet 

#Make and Model 

def car(make, model)
  puts "#{make} #{model}"
end 

car('Toyota', 'Corolla')

#Day or Night? 

daylight = [true, false].sample

def time_of_day?(daylight) 
  if daylight
    puts "daytime"
  else 
    puts "nighttime"
  end 
end 

daylight = [true, false].sample
time_of_day(daylight)

#Naming Animals 

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Lucy')}."

#Name Not Found 

def assign_name(name='Bob')
  name 
end 

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'

#Multiply the Sum 

def add(x,y)
  x + y
end 

def multiply(x,y)
  x * y
end 

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

#Random Sentence 

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

names.each do {|name| name.sample } 
activities.each do {|activity| activity.sample }  
#or 
def name(names)
  names.sample 
end 

def activity(activities)
  activities.sample 
end 


def sentence(name, activity)
  "#{name} went #{activity} today"

puts sentence(name(names), activity(activities))

#Print Me (Part 1)

def print_me
  puts "I'm printing within the method"
end 
# => nil

#Print Me (Part 2)

def print_me 
  "I'm printing within the method"
end 

puts print_me 