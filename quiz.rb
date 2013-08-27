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

def big_diff(arr = [])
  max_and_index = arr.each_with_index.max
  arr.delete_at(max_and_index[1])
  max2 = arr.max
  return max_and_index[0] - max2
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(arr = [])
  l = arr.length
  middle = l/2
  new_arr = []
  if l % 2 == 0
    new_arr << arr[middle - 1] << arr[middle]
  else
    new_arr << arr[middle - 1] << arr[middle] << arr[middle + 1]
  end
  return new_arr.reduce(:+).to_f / new_arr.size
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(arr = [])
  for num in 1..arr.length
    new_arrs = []
    new_arrs << arr.slice(0, num) << arr.slice(num, arr.length - num)
    if new_arrs[0].reduce(:+) == new_arrs[1].reduce(:+)
      return true
    end
  end
  return false
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(arr = [])
  ret_val = 0
  in_clump = false
  curr_val = nil
  for num in 0..arr.length - 2
    if in_clump
      if arr[num] != arr[num + 1]
        in_clump = false
        curr_val = nil
      end
    else
      if arr[num] == arr[num + 1]
        ret_val += 1
        in_clump = true
        curr_val = arr[num]
      end
    end
  end
  return ret_val
end