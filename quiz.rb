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

# Finds the largest number and second largest number
# Then subtracts the difference.
def big_diff(array)
	return array.delete_at(array.index(array.max)) - array.delete_at(array.index(array.max))
end



# return the average of the 2 or 3 numbers in the middle of the array
def average_median(array)
	medians = []
	(2 + array.length % 2).times do 
		medians << array.slice!(array.length/2)
	end
	return average(medians)
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
def can_balance(array)
	array.each_with_index do |number, i|
		i.times do 
			return true if (sum(array[0...i]) == sum(array[i...array.length]))
		end
	end
	false
end

# Returns the number of times 2 or more of the same number appear sequentially.
def clumps(array)
end

#sums values of an array
def sum(array)
	sum = 0
	array.each do |number|
		sum += number
	end
	return sum
end	


# returns the average of an array of numbers
def average(array)
	sum = 0
	array.each do |number|
		sum += number
	end
	return (sum/array.length.to_f).round(2)
end

def large_array()
	array = (1..100).to_a.shuffle!
	puts array
end

large_array