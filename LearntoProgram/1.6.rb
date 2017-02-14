#Improved Ask Method 
def ask question 
  while true 
    puts question 
    reply = gets.chomp.downcase 
    if reply == 'yes'
      return true 
    end 
    if reply == 'no'
      return false 
    end 
    puts "Please answer yes or no"
  end 
end 

#or 
def ask question 
  while true 
    puts question
    reply = gets.chomp.downcase 
    return true if reply == 'yes'
    return false if reply == 'no'
    puts "Please answer yes or no"
  end 
end 
puts (ask('Do you like eating tacos?'))

#Old School Roman Numberals 
def old_school(num) 
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
puts (old_school(1999))

#or
def old_school(num)
  raise 'Must use positive integer' if num <= 0
  roman = ''
  roman = roman + 'M' * (num/1000)
  roman = roman + 'D' * (num%1000/500)
  roman = roman + 'C' * (num%500/100)
  roman = roman + 'L' * (num%100/50)
  roman = roman + 'X' * (num%50/10)
  roman = roman + 'V' * (num%10/5)
  roman = roman + 'I' * (num%5/1)
  roman
end 
puts (old_school(1999))

#Modern Roman Numerals 
def modern(num)
  thousands = (num/1000)
  hundreds = (num%1000/100)
  tens = (num%100/10)
  ones = (num%10)

  roman = 'M' * thousands 

  if hundreds == 9 
    roman = roman + 'CM'
  elsif hundreds == 4 
    roman = roman + 'CD' 
  else 
    roman = roman + 'D' * (num%1000/500)
    roman = roman + 'C' * (num%500/100)
  end 

  if tens == 9 
    roman = roman + 'XC'
  elsif tens == 4 
    roman = roman + 'XL'
  else 
    roman = roman + 'L' * (num%100/50)
    roman = roman + 'X' * (num%50/10)
  end 

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4 
    roman = roman + 'IV'
  else 
    roman = roman + 'V' * (num%10/5)
    roman = roman + 'I' * (num%5/1)
  end 
  roman 
end 
puts (modern(1999))

#or 
def modern(num)
  raise 'Must use postive integer' if num <= 0 
  digit_vals = [['I',   5,    1]
                ['V',  10,    5]
                ['X',  50,   10]
                ['L', 100,   50]
                ['C', 500,  100]
                ['D',1000,  500]
                ['M', nil, 1000]]
  roman = ''
  remaining = nil 

  #Build string 'roman' in reverse 
  build_rev = proc do |l,m,n| 
    num_l = m ? (num % m / n) : (num / n)
    full = m && (num_l == (m/n - 1))
    if full && (num_l > 1 || remaining)
      #must carry 
      remaining ||= l #carry l if not already carrying 
    else  
      if remaining 
        roman << l + remaining 
        remaining = nil 
      end 
      roman << l * num_l 
    end 
  end 
  digit_vals.each {|l,m,n| build_rev[l,m,n]}
  roman.reverse 
end 
puts (modern(1999))