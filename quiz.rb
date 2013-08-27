#                        | \
#                        | |
#                        | |
#   |\                   | |
#  /, ~\                / /
# X     `-.....-------./ /
#  ~-. ~  ~              |
#     \             /    |
#      \  /_     ___\   /
#      | /\ ~~~~~   \ |
#      | | \        || |
#      | |\ \       || )
#     (_/ (_/      ((_/

QUIZ_TOPICS = ["ruby", "rspec", "testing"]

# Given an array...
# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8

def big_diff(array)
  diff = array.max - array.sort![-2]
  return diff
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  if array.length % 2 == 0 # if it has even elements
    first_num = array[(array.length/2-0.5)]
    second_num = array[(array.length/2+0.5)]
    avg = ((first_num+second_num)/2)
    return avg
  elsif array.length % 2 == 1 # if has odd elements
    first_num = array[(array.length/2-1)].to_f
    second_num = array[(array.length/2)].to_f
    third_num = array[(array.length/2+1)].to_f
    avg = ((first_num + second_num + third_num)/3)
    return avg
  end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(array)
  i = 0
  while i < array.length
    if (array[0..i].inject{|sum,x| sum + x }) == ((array.inject{|sum,x| sum + x }) - (array[0..i].inject{|sum,x| sum + x }))
      return true
    end
    i += 1
  end
  return false
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  array.each do |element|
    if array.pop(element).include? element
      array.push(element)
      return true
    else
      return false
    end
  end
end


