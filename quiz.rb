require "benchmark"
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
def big_dif(array)
  new_number = array.max - array.sort[-2]
end

def big_tim(array)
  return array.sort!.pop - array.pop
end
# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

def average_median(array)
  elements = array.count
  if elements.even?
    mid_index = (elements/ 2) - 1
    median = (array[mid_index].to_f + array[mid_index + 1])/2
  else
    mid_index = (elements/2) - 1
    median = (array[mid_index - 1].to_f + array[mid_index] + array[mid_index + 1])/3
  end
end

def average_wes(array)
  l = array.length
  return ( ( (l - 1) / 2) + l / 2) / 2.0
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

def can_balance(array)
  if array
    return true

  else
    return false
  end
end


# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3




##############
### Benchmarks
##############

# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html
# http://rubylearning.com/blog/2013/06/19/how-do-i-benchmark-ruby-code/

iterations = 100_000 # How many times to test?
array = (1..100).to_a.shuffle!
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
      average_median((1..100).to_a.shuffle!)
    end
  end

  #alternative_approach
  bm.report('report 2') do
    iterations.times do
      average_wes((1..100).to_a.shuffle!)
    end
  end

end