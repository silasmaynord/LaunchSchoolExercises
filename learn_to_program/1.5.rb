#Building and Sorting an Array 
puts "Enter a word"
word = gets.chomp 

words = []
if word != ""
  words << word 
else 
  puts words.sort! 
end 

#Table of Contents
title = "Table of Contents"
chapters = [["Getting Started", 1], 
            ["Numbers", 9],
            ["Letters", 13]]
puts title.center(50)
puts 
chapters.each_with_index do |chapter, index | 
  name, page = chapter 
  chapter_number = index + 1 
  beginning = "Chapter #{chapter_number}: #{name}"
  ending = "page #{page}"
  puts beginning.ljust(30) + ending.rjust(20)
end 