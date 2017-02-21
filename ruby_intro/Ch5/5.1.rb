#What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

#Every Ruby expression returns something. 
#At the conclusion of this iteration, nothing is happening. 
#The original array is returned 