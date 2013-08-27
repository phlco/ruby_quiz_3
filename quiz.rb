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
  value1 = array.max
  array.delete(array.max)
  value2 = array.max
  return (value1 - value2).abs
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  center = array.length / 2
  sum = 0

  if array.length.even?
    sum = array[center - 1] + array[center]
    return (sum.to_f / 2)
  else
    new_array = array[(center - 1).. (center + 1)]
    new_array.each do |num|
      sum += num
    end
    return ((sum.to_f / 3) * 100).to_i / 100.0
  end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

# def can_balance(array)
#   array_of_arrays = []
#   array.each do |num|
#     array_of_arrays << array.shift
#     array_of_arrays << array
#   end
#   return array_of_arrays
# end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  count = []
  current_num = 0
  array.each do |num|
    if ((num === current_num) && (count.include?(num) == false))
      count << num
    end
    current_num = num
  end
  return count.length
end






