#Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

#What's the difference between the two hashes that were created?

#In the first hash, the symbol ':x' is the key, 
#not the local variable.
#In the second hash, the return value 
#of the local variable key 'x' is "some value".