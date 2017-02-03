#What will the following programs return? What is value of arr after each?

arr = ["b", "a"]
  arr = arr.product(Array(1..3))
  arr.first.delete(arr.first.last)

arr = ["b", "a"]
  arr = arr.product([Array(1..3)])
  arr.first.delete(arr.first.last)

  #Look up everything currently unkown 

#the third line of each program is deleting what is being returned from the array
#The last portion of the first element is being deleted  
#Brackets within parentheses gives us a one-element array 
