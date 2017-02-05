#Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#Give us the following error when we run it?

#block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#from test.rb:5:in `<main>'

#Because the argument for the method "execute" 
#is "block" rather than "&block"

#It is missing the ampersand sign, 
#allowing the block to be passed 
#as a parameter