#Use the each_with_index method to iterate through an array 
#of your creation that prints each index and value of the array.

favorite_animals = ["turtles",
                    "red pandas", 
                    "cats"]
                    
favorite_animals.each_with_index do |animal, index| 
  puts "#{index + 1}. #{animal}" 
end 

#