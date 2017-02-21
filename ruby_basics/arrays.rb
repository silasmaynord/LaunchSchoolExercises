#New Pet 
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]

puts "I have a pet #{my_pet}."

#More Than One 
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}."

#Free The Lizard 
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop
puts "I have a pet #{my_pets[0]}"

#One Isn't Enough
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}."

#What Color Are You?
colors = ['red', 'yellow', 'purple', 'green']

colors.each do {|color| puts "I'm the color #{color}"}

#Doubled 
numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do {|number| number*2}
p doubled_numbers

#Divisible by Three
divisible_by_three = numbers.select do {|number| number % 3 == 0}
p divisible_by_three

#Favorite Number (Part 1)
['Dave', 7, 'Miranda', 3, 'Jason', 11]

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
flat_favorites = favorites.flatten
p flat_favorites 

#Are We The Same 
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2