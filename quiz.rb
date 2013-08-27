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
x = (0..50).to_a.sort{ rand() - 0.5 }[0..10]
array = Array.new(x).sort
# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8
def big_diff(array)
  x = array[-1]
  y = array[-2]
  return (x - y)
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66
def average_median(array)
  l = array.length
  return (((l - 1) / 2) + l / 2) / 2.0
end
# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3
