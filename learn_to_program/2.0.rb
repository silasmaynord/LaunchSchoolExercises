class Array 
  arr = self 
  shuf = []

  while arr.length > 0 
    rand_index = rand(arr.length)

    curr_index = 0 
    new_arr = []
    arr.each do |item| 
      if curr_index == rand_index 
        shuf.push item 
      else 
        new_arr.push item 
      end 

      curr_index = curr_index + 1 
    end 

    arr = new_arr
  end 
  shuf 
end 
class Integer 
  def factorial 
    if self <= 1 
      1 
    else 
      self * (self-1).factorial 
    end 
  end 
  def to_roman 
    roman = ''

    roman = roman + 'M' * (num        / 1000)
    roman = roman + 'D' * (num %  1000/  500)
    roman = roman + 'C' * (num %   500/  100)
    roman = roman + 'L' * (num %   100/   50)
    roman = roman + 'X' * (num %    50/   10)
    roman = roman + 'V' * (num %    10/    5)
    roman = roman + 'I' * (num %     5/    1)
    roman 
  end 
end 
puts [1,2,3,4,5].shuffle
puts 7.factorial 
puts 73.to_roman 

#or 
class Array 
  def shuffle 
    sort_by{rand}
  end 
end 
class Integer 
  def factorial 
    raise 'Must not use negative number' if self < 0 
    (self <= 1) ? 1 : self * (self-1).factorial 
  end
  def to_roman 
    roman = ''

    roman = roman + 'M' * (num        / 1000)
    roman = roman + 'D' * (num %  1000/  500)
    roman = roman + 'C' * (num %   500/  100)
    roman = roman + 'L' * (num %   100/   50)
    roman = roman + 'X' * (num %    50/   10)
    roman = roman + 'V' * (num %    10/    5)
    roman = roman + 'I' * (num %     5/    1)
    roman 
  end 
end 

p 7.factorial.to_roman.split(//).shuffle 

#Orange Tree 
class OrangeTree 
  def initialize 
    @height       = 0 
    @orange_count = 0
    @alive        = 0 
  end 

  def height 
    if @alive 
      @height 
    else 
      'A dead tree is not very tall'
    end 
  end 
  
  def count_the_oranges 
    if @alive 
      @orange_count
    else 
      'A dead tree has no oranges'
    end 
  end 

  def one_year_passes 
    if @alive 
      @height = @height + 0.4 
      @orange_count = 0 
      if @height > 10 && rand(2) > 0 
        @alive = false 
        'The tree is too old, and has died'
      elsif @height > 2 
        @orange_count = (@height * 15 - 25).to_i
        "This year, your tree grew to #{@height}m tall,"
        "and produced #{orange_count} oranges."
      else 
        "This year your tree grew to #{@height}m tall,"
        "but is still too young to bear fruit."
      end 
    else 
      "A year later, the tree is still dead..."
    end 
  end 
  def pick_an_orange 
    if @alive 
      if @orange_count > 0 
        @orange_count = @orange_count - 1 
        "You pick an orange."
      else 
        "You find no oranges on this tree."
      end 
    else 
      "A dead tree has no fruit to pick."
    end 
  end 
end 
ot = OrangeTree.new 
23.times do 
  ot.one_year_passes
end 

puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)

#Interactive Baby Dragon 
#Using the dragon class from Chapter 13
puts "What would you like to name your baby dragon?"
name = gets.chomp 
pet = Dragon.new name 

while true 
  puts 
  puts "commands: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp 

  if command == 'exit'
    exit 
  elsif command == 'feed'
    pet.feed 
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed 
  else 
    puts "Huh? Please type one of the commands"
  end 
end 

#or 
puts "What would you like to name your baby dragon?"
name = gets.chomp 
pet  = Dragon.new name 
obj  = Object.new #Just a blank object 

while true 
  puts 
  puts "commands: feed, toss, walk, rock, put to bed, exit" 

  command = gets.chomp 

  if command == 'exit'
    exit 
  elsif pet.respond_to?(command) && !obj.respond_to?(command)
    pet.send command
  else 
    puts "Huh? Please type one of the commands"
  end 
end 

