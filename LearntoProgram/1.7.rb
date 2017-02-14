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
  