#Lets look at the current directory 
#and report the files that have .txt extensions

irb :001 > d = Dir.new(".")
 => #<Dir:.>
irb :02 > while file = d.read do
irb :03 >     puts "#{file} has extension .txt" if File.extname(file) == ".txt"
irb :04?>   end
simple_file.txt has extension .txt
original_file.txt has extension .txt
 => nil

 #We can also do this using the Pathname class. 
 #We have to require 'pathname' before using it. Here's an example

 irb :001 > require 'pathname'
 => true
irb :002 > pn = Pathname.new(".")
irb :003 > pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }
simple_file.txt has extension .txt
original_file.txt has extension .txt
 => [#<Pathname:simple_file.txt>, #<Pathname:cultures.json>, #<Pathname:ruby_book>, #<Pathname:articles.xml>, #<Pathname:chair.rb>, #<Pathname:.git>, #<Pathname:original_file.txt>, #<Pathname:feedzilla.json>, #<Pathname:slashdot>, #<Pathname:articles.json>, #<Pathname:..>, #<Pathname:.>]