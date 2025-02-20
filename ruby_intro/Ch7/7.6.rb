#Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Write a program that prints out groups of words that are anagrams. 
#Anagrams are words that have the same exact letters in them 
#but in a different order. Your output should look something like this:

#["demo", "dome", "mode"]
#["neon", "none"]
#(etc)

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end 

result.each do |k,v| 
  puts "------"
  p v 
end 

#Iterate over the words array, turning each word's 
#letters into alphabetical order.
#If key exists, append to the key's list 
#else create a new key, with word in the the list 