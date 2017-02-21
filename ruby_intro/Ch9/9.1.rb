#Write a program that checks if the sequence of characters 
#"lab" exists in the following strings. 
#If it does exist, print out the word.

#"laboratory"
#"experiment"
#"Pans Labyrinth"
#"elaborate"
#"polar bear"

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

#Regex is used in this exercise
#// is used for regular expression
#=~ is used to see if there is a match 
#Because the "L" in "Labyrinth" is capital, it was not recognized...
#add i after /lab/, which means case insensitive