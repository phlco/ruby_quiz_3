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
  array.sort!
  difference = array[-1] - array[-2]
  return difference
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  l = array.length
  if l % 2 == 0
    answer = (array[l/2] + array[(l/2) - 1]).to_f/2
  else
    answer = (array[l/2] + array[(l/2) + 1] + array[(l/2) - 1]).to_f/3
  end
  return answer.round(2)
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(array)
  l = array.length
  i = 0
  is_balanced = false
  while i < l do
    first = array.slice(0..i)
    second = array.slice(i+1..l)
    if first.inject(:+) == second.inject(:+)
      is_balanced = true
    end
    i = i+1
  end
  return is_balanced
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  total = 0
  array.each_with_index do |value, index|
    if value == array[index+1] && value != array[index-1]
      total = total + 1
    end
  end
  return total
end