#Now, using the same array from #2, 
#use the select method 
#to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select {|x| x % 2 != 0}

#or

new_arr = arr.select do |x| 
  x % 2 != 0 
end 

#or 

odd_arr = arr.select do {|x| x.odd? ? true : false }

#.odd? can be used to further condense characters 
#
