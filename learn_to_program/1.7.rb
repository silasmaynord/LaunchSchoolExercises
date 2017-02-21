#Rite of Passage:Sorting 

def sort arr
  rec_sort arr, []
end 

def rec_sort unsorted, sorted
  if unsorted.length <= 0 
    return sorted
  end 

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_object|
    if test_object < smallest
      sorted.push smallest 
      smallest = test_object
    else 
      still_unsorted.push test_object
    end 
  end 
  sorted.push smallest 
  rec_sort still_unsorted, sorted 
end 

puts (sort(['can', 'feel', 'singing', 'like', 'a', 'can']))

#or 
def sort arr
  return arr if arr.length <= 1 
  middle  = arr.pop
  less    = arr.select{|x| x < middle}
  more    = arr.select{|x| x > middle}

  sort(less) + [middle] + sort(more)
end 

p(sort(['can','feel','singing','like','singing']))

#Shuffle
def shuffle arr 
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
puts (shuffle([1,2,3,4,5,6]))

#or 
def shuffle arr
  arr.sort_by{rand}
end 

p(shuffle([1,2,3,4,5,6]))

#Dictionary Sort 
def dictionary_sort arr
  rec_dict_sort arr, []
end 
def rec_dict_sort unsorted, sorted 
  if unsorted.length <= 0 
    return sorted 
  end
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object| 
    if tested_object.downcase < smallest.downcase 
      still_unsorted.push smallest 
      smallest = tested_object
    else 
      still_unsorted.push tested_object
    end 
  end 
  sorted.push smallest 
  rec_dict_sort still_unsorted, sort
end 
puts(dictionary_sort(['can', 'feel','singing', 'like','A','can']))

#or
def dictionary_sort arr
  return arr if arr.length <= 1 
  middle  = arr.pop 
  less    = arr.select{|x| x.downcase < middle.downcase}
  more    = arr.select{|x| x.downcase > middle.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end 

words = ['can', 'feel','singing.','like','A','can']
puts(dictionary_sort(words).join(' '))

#Expanded english_number 
def english_number number 
  if number < 0 
    return "Please enter a non-negative number"
  end 
  if number == 0 
    return 'zero'
  end 
  num_string = ''
  ones_place = ['one', 'two', 'three',
                'four','five','six',
                'seven','eight','nine']
  tens_place = ['ten','twenty','thirty',
                'fourty','fifty','sixty',
                'seventy','eighty','ninety']
  teenagers  = ['eleven','twelve','thirteen'
                'fourteen','fifteen','sixteen',
                'seventeen','eighteen','nineteen']
  zillions   = [['hundred',            2]
                ['thousand',           3]
                ['million',            6]
                ['billion',            9]
                ['trillion',          12]
                ['quadrillion',       15]
                ['quintillion',       18]
                ['sextillion',        21]
                ['septillion',        24]
                ['octillion',         27]
                ['nonillion',         30]
                ['decillion',         33]
                ['undecillion',       36]
                ['duodecillion',      39]
                ['tredecillion',      42]
                ['quattourdecillion', 45]
                ['quindecillion',     48]
                ['sexdecillion',      51]
                ['septendecillion',   54]
                ['octdecillion',      57]
                ['novemdecillion',    60]
                ['vigintillion',      63]
                ['googol',           100]]
  left = number

  while zillions.length > 0 
    zil_pair =        zillions.pop
    zil_name =        zil_pair[0]
    zil_base =    10**zil_pair[1]
    write = left/zil_base           #How many zillions left?
    left = left - write*zil_base    #Subract off those zillions 

    if write > 0 
      #Here's the recursion
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0 
        #So we don't write 'two billionfifty-one' 
        num_string = num_string + ' '
      end 
    end 
  end 
  write = left/10                   #How many tens left?
  left = left - write*10            #Subtract off those tens

  if write > 0
    if ((write == 1) and (left > 0))
      #Since we can't write 'tenty-two' instead of twelve
      #We have to make a special exception for these 
      num_string = num_string + teenagers[left - 1]
      #the '-1' is to adject for index position

      #Digit in the ones place is already taken care of 
      left = 0 
    else 
      num_string = num_string + tens_place[write - 1]
      #To adjust for index position
    end 

    if left > 0 
      #So we don't write 'sixtyfour'
      num_string = num_string + ' '
    end 
  end 

  write = left                    #How many ones left? 
  left = 0                        #Subract off those ones 

  if write > 0 
    num_string = num_string + ones_place[write-1]
    #to adjust for index position
  end 
  num_string 
end 

puts english_number(0)

#99 Bottles of Beer on the Wall 

#english_number plus this: 
num_at_start = 99
num_now = num_at_start
while num_now > 2 
  puts english_number(num_now).capitalize + 'bottles of beer on the wall'
    english_number(num_now) + ' bottles of beer'
  num_now = num_now - 1 
  puts "take one down, pass it around, " + 
    english_number(num_now) + " bottles of beer on the wall"
end 

puts "Two bottles of beer on the wall, two bottles of beer"
puts "take one down, pass it around, one bottle of beer on the wall"
puts "one bottle of beer on the wall, one bottle of beer"
puts "take it down, and pass it around, no more bottles of beer on the wall"

#or 
num_at_start = 99

num_bot = proc {|n| "#{english_number n} bottle#{n == 1 ? '' : 's'}"}

num_at_start.downto(2) do |num| 
  bottles = 
  puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer".capitalize
  puts "take one down, pass it around, #{num_bot[num]-1} of beer on the wall"
end 
puts "#{num_bot[1]} of beer on the wall, #{num_bot[1]} of beer".capitalize
puts "take one down, pass it around, no more bottles of beer on the wall"


