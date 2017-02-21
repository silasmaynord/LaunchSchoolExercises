#What will the following program print to the screen? 
#What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

#The block was not activated with the .call method, 
#nothing is printed to the screen.
#The method returns a Proc object.

