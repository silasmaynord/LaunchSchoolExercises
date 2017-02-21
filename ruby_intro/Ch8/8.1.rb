#Let's take one file's contents as input 
#and create a new transformed file as a result:

irb :01 > simple = File.read("simple_file.txt")
 => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple."
irb :002 > original = File.new("original_file.txt", "w+")
 => #<File:original_file.txt>
ibr :003 > File.open(original, "a") do |file|
irb :004 >     file.puts simple
irb :005?>   end
 => nil
irb :006 > File.read(original)
 => "another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple.\n"

 