#One Billion Seconds
puts(Time.gm(1994,1,23) + 10**9)

#Happy Birthday 
puts "What year were you born?"
b_year = gets.chomp.to_i 
puts "What month were you born? (1-12)"
b_month = gets.chomp.to_i 
puts "What day of the month were you born?"
b_day = gets.chomp.to_i 

b = Time.local(b_year, b_month, b_day)
t = Time.new 

age = 1 

while Time.local(b_year + age, b_month, b_day)
  puts 'Spank!'
  age = age + 1 
end 

#or
puts "When were you born?(YYYYMMDD)"
input = gets.chomp

b_year  = input[0..3].to_i
b_month = input[4..5].to_i
b_day   = input[6..7].to_i

t = Time.new 

t_year  = t.year
t_month = t.month 
t_day   = t.day

age = t_year - b_year

if t_month < b_month || (t_month == b_month && t_day < b_day)
  age -= 1 
end 

if t_month == b_month && t_day == b_day
  puts "Happy Birthday!"
end 
age.times {puts 'Spank!'}

#Party like it's roman_to_integer MCMXCIV 
def roman_to_integer roman 
  digit_vals = {'i' =>    1,
                'v' =>    5,
                'x' =>   10,
                'l' =>   50,
                'c' =>  100,
                'd' =>  500,
                'm' => 1000}
  total = 0 
  prev  = 0 
  index = roman.length - 1 
  while index >= 0 
    c = roman[index].downcase 
    index = index - 1 
    val = digit_vals[c]
    if !val 
      puts "This is not a valud roman numeral"
      return 
    end 
    if val < prev
      val = val * -1
    else 
      prev = val 
    end 
    total = total + val 
  end 
  total 
end 
puts(roman_to_integer('MCMXCIX'))
puts(roman_to_integer('CCCLXV'))

#or 
def roman_to_integer roman 
  digit_vals = {'i' =>    1,
                'v' =>    5,
                'x' =>   10,
                'l' =>   50,
                'c' =>  100,
                'd' =>  500,
                'm' => 1000}
  total = 0 
  prev  = 0 
  roman.reverse.each_char do |c_or_C| 
    c   = c_or_C.downcase
    val = digit_vals[c]
    if !val 
      puts "This is not a valid roman numeral"
      return 
    end 
    if val < prev 
      val *= -1 
    else 
    prev = val 
    end 
    total += val 
  end 
  total 
end 
puts(roman_to_integer('MCMXCIX')) 
puts(roman_to_integer('CCCLXV'))

#Birthday Helper 
birth_dates = {}
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  first_comma = 0 
  while line[first_comma] != ',' && 
      first_comma < line.length
    first_comma = first_comma + 1
  end 

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]

  birth_dates[name] = date 
end 

puts "Whose birthday would you like to know?"
name = gets.chomp 
date = birth_dates[name]

if date == nil 
  puts "I don't know that one"
else 
  puts date[0..5]
end 

#or 
birth_dates = {}

File.readlines('birthdates.txt').each do |line| 
  name, date, year = line.split(',')
  birth_dates[name] = Time.gm(year, *(date.split))
end 

puts "Whose birthday would you like to know?"
name = gets.chomp 
bday = birth_dates[name]

if bday == nil 
  puts "I don't know that one"
else 
  now = Time.new 
  age = now.year - bday.year 

  if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
    age += 1 
  end 

  if now.month == bday.month && now.day == bday.day 
    puts "#{name} turns #{age} today!" 
  else 
    date = bday.strftime "%b %d"
    puts "#{name} will be #{age} on #{date}."
  end 
end 
