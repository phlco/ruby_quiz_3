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

class Quiz
  attr_accessor :numbers

  def initialize()
    @array = numbers
    @array = []
  end

# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8

  def add_numbers(numbers)
    @array << numbers
    return @array
  end

  def subtract_smallest_from_largest
    @array = @array.sort
    num1 = @array.pop(&:shift)
    num2 = @array.pop
    @difference = num1 - num2
    return @difference
  end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

  def average_of_middle
    if @array.index.count % 2 == 0
      middle_even = (@array.index.count / 2) - 1
      middle_even_next = @array.index.count / 2
      array_to_avg = [@array[middle_even], @array[middle_even_next]]
      @average = array_to_avg.reduce(:+).to_f / array_to_avg.size
    else
      middle_odd = (@array.index.count / 2) - 1
      middle_odd_next = @array.index.count / 2
      middle_odd_next_two = (@array.index.count / 2) + 1
      array_to_avg = [@array[middle_odd], @array[middle_odd_next], @array[middle_odd_next_two]]
      @average = (array_to_avg.reduce(:+).to_f / array_to_avg.size).round(2)
    end
    return @average
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

end