#You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

#...and get the following error message:

"TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'"

#What is the problem and how can it be fixed?

#The problem is that you put brackets around the index number, 
#not the value of that number. 
#Replacing 'margaret' with 3 
#would allow you to replace the index value with 'jody'.