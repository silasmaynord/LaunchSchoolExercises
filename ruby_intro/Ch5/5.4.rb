#Write a method that counts down to zero using recursion.

def countdown(x) 
  if x <= 0 
    puts x 
  else 
    puts x 
    countdown(x-1)
  end 
end 

countdown(10)