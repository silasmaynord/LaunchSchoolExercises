#Given a hash of family members, with keys as the title 
#and an array of names as the values, 
#use Ruby's built-in select method 
#to gather only immediate family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k,v|
  k == :sisters || k == :brothers
end 

arr = immediate_family.values.flatten 

p arr 

#hashes are arrays with multiple values per key 
# .select method off hash class is used to go through and "select" keys and values
# .flatten is a method that takes all the .values out of a hash, 
#unnesting them into a single arrray 