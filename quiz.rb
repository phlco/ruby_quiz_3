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
  max = array.max
  array.delete(max)
  second_max = array.max
  max - second_max
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  length = array.length
  if length % 2 == 0 #even
    num2 = array[length / 2]
    num1 = array[(length / 2) - 1]
    new_array = [num1, num2]
    new_array.inject(0) {|sum, el| sum.to_f + el } / new_array.length
  else #odd
    num2 = array[length / 2]
    num1 = array[(length / 2) - 1]
    num3 = array[(length / 2) + 1]
    new_array = [num1, num2, num3]
    new_array.inject(0) {|sum, el| sum.to_f + el } / new_array.length
  end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(array)
  status = false
  current_index = 0
  end_index = array.length - 1

  while status == false
    current_portion = array[0, current_index + 1]
    current_portion_total = current_portion.inject(0) {|sum, el| sum + el }
    next_portion = array[current_index + 1, end_index]
    next_portion_total = next_portion.inject(0) {|sum, el| sum + el }
    if current_portion_total == next_portion_total
      status = true
      return true
    elsif current_index == end_index
      return false
    else
      current_index += 1
    end
  end
end


# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  answer = 0
  answer_collection = []
  counter = 0
  max = array.length

  until counter == max
    num = array[counter]
    unless answer_collection.include? (num)
      if array.count(num) > 1
        answer += 1
        answer_collection << num
      end
    else
      counter += 1
    end
  end

  return answer
end









