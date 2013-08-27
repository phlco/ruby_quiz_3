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
  max_num = array.max
  sub_array = array.reject { |n| n == max_num }
  second_max_num = sub_array.max
  result = max_num - second_max_num
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  if array.length.even? == true
    second_index = array.length / 2
    first_index = second_index - 1
    result = (array[first_index] + array[second_index]) / 2.0
  else
    middle_index = array.length / 2
    result = (array[middle_index - 1] + array[middle_index] + array[middle_index + 1]) / 3.0
  end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(array)
  loopcount = array.length - 1
  loopcount.times do |i|
    first_array = array[0..i]
    second_array = array[i+1..loopcount]
    if first_array.inject(:+) == second_array.inject(:+)
      return true
    end
  end
  return false
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  clump_count = 0
  consecutive_count = 0

  array.each do |i|
    if array.length == 1 || i == 0
      next
    end

    if array[i] == array[i - 1]
      consecutive_count += 1
      if consecutive_count == 1
        clump_count += 1
      end
    else
      consecutive_count = 0
    end
  end
  return clump_count
end



