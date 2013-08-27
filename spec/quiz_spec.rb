require "spec_helper"
require_relative '../quiz'

#                )\._.,--....,'``.
#  .b--.        /;   _.. \   _\  (`._ ,.
# `=,-,-'~~~   `----(,_..'--(,_..'`-.;.'

describe "a quiz" do
  it "should be about Ruby and Testing in Rspec" do
    expect(QUIZ_TOPICS).to include("ruby")
    expect(QUIZ_TOPICS).to include("rspec")
    expect(QUIZ_TOPICS).to include("testing")
  end
end

# more in quiz.rb!

# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8

describe "the big_diff function" do
  it "should find the difference between the largest and second largest number" do
    first_array = [3, 6, 9, 12]
    expect(big_diff(first_array)).to eq(3)
  end

  it "should find that difference regardless of order" do
    second_array = [9, 20, 11, 12]
    expect(big_diff(second_array)).to eq(8)
  end
end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

describe "the average_median function" do
  it "should find the median of an array" do
    first_array = [2, 6, 9, 11]
    expect(average_median(first_array)).to eq(7.5)
  end

  it "should find that difference regardless of order" do
    second_array = [9, 8, 2, 4, 7]
    expect(average_median(second_array)).to eq(4.67)
  end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

describe "the can_balance function" do
  it "should return true if an array can be split into parts of equal sums" do
    first_array = [1, 2, 1, 1, 1]
    expect(can_balance(first_array)).to eq(true)
  end

  it "should return false if an array cannot be split" do
    second_array = [2, 1, 1, 2, 1]
    expect(can_balance(second_array)).to eq(false)
  end

  it "should allow even heavily weighted arrays to return true" do
    third_array = [3, 4, 1, 2, 3, 1]
    expect(can_balance(third_array)).to eq(true)
  end
end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

describe "the count_clumps function" do
  it "should return the number of times 2 or more of the same number appear sequentially" do
    first_array = [2, 1, 1, 1, 1, 3, 3, 3, 1]
    expect(count_clumps(first_array)).to eq(2)
  end

  it "should allow for lone numbers to appear between those clumps" do
    second_array = [9, 3, 3, 4, 4, 4, 6, 7, 7, 7]
    expect(count_clumps(second_array)).to eq(3)
  end
end