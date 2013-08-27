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

  require 'benchmark'

QUIZ_TOPICS = ["ruby", "rspec", "testing"]

# Given an array...

# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8
def big_diff(array)
  ordered_array = array.sort!
  value = ordered_array[-1] - ordered_array[0]
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  if array.count % 2 == 0
    middle = array.length/2
    first_value = array[middle]
    second_value = array[middle-1]
    return ((first_value.to_f + second_value)/ 2).round(2)
  else
    middle = array.length/2
    first_value = array[middle]
    second_value = array[middle-1]
    third_value = array[middle+1]
    return((first_value.to_f + second_value + third_value)/3).round(2)
  end
end


# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true


def can_balance(array)
  array.length
  if array[0..0].inject{|sum,x| sum + x } == array[1..-1].inject{|sum,x| sum + x }
    return true
  elsif
    array.each_with_index do |number, index|
      if array[0..index+1].inject{|sum,x| sum + x } == array[index+2 ... array.length].inject{|sum,x| sum + x }
        return true
      else
        return false
      end
    end
  end
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

def count_clumps(array)
  array_bunch = []
  array.each do |number|
    if array.count(number) >= 2
      array_bunch << [number, array.count(number)]
    end
  end
  return unique_array = array_bunch.uniq.count
end

iterations = 100_000 # How many times to test?

# when doing benchmarks that test code that executes very quickly,
# you need to do many iterations to see a meaningful number.

# (20) is padding for headers
Benchmark.bmbm(20) do |bm|
  # `bmbm` first runs the code as a 'rehearsal' to force any initialization that needs to happen,
  # then it forces the GC to run, then it runs the benchmark again 'for real'.
  # This ensures that the system is fully initialized and the benchmark is fair.

  #first_approach
  bm.report('report 1') do
    iterations.times do
    end
  end

  #alternative_approach
  bm.report('report 2') do
    iterations.times do
    end
  end

end


