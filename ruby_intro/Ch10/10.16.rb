#Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

#and turn it into a new array 
#that consists of strings containing one word. 
#(ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, 
#as well as String's split method.

a = a.map {|pairs| pairs.split}
a = a.flatten
p a 

#.split operator separates strings based on spaces 

#.map allows for itteration through the array

#.flatten returns all the elements 
#in the nested arrays to the top level

#Further consolidation
a = a.map!{|s| s.split!}.flatten! 