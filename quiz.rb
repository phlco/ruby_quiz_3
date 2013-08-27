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
  array = array.sort!
  length = array.length
  largest = array[length - 1]
  second = array[length - 2]
  return largest - second
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  length = array.length
  if length%2 == 0
    high_mid = length / 2
    low_mid = length / 2 - 1
    median = (array[high_mid].to_f + array[low_mid].to_f) / 2
    return median.round(2)
  else
    mid_mid = (length - 1) / 2
    low_mid = (length - 1) / 2 - 1
    high_mid = (length - 1) / 2 + 1
    median = (array[low_mid].to_f + array[mid_mid].to_f + array[high_mid].to_f) / 3
    return median.round(2)
  end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(array)
  sum_array = 0
  half_sum = 0
  balance_half = 0
  num_item = 0
  array.each do |item|
    sum_array += item
  end
  if sum_array%2 != 0
    return false
  else
    half_sum = sum_array / 2
    while balance_half < half_sum
      balance_half += array[num_item]
      num_item += 1
    end
    if balance_half == half_sum
      return true
    else
      return false
    end
  end
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  clump_sum = 0
  last = nil
  in_clump = false
  array.each do |item|
    if item == last
      if in_clump == false
        clump_sum += 1
        in_clump = true
      end
    else
      in_clump = false
    end
    last = item
  end
  return clump_sum
end


