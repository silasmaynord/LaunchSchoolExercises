#Use the each method of Array 
#to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 
#and print out each value.

count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

count.each do |x| 
  puts x 
end 

#or 

count.each {|x| puts x}
