#What method could you use to find out if a Hash 
#contains a specific value in it? 
#Write a program to demonstrate this use.

opposites = {positive: "negative", up: "down", right: "left"}

if opposites.has_value?("negative")
  puts "Got it"
else 
  puts "Nope"
end 

#.has_value?() gives true or false
#We use 'if' to put a string when the value is present (true)
#'else' is used when the value is not present (false)