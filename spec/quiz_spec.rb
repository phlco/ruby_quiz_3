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

describe "an array" do
  it "should subtract the difference of the biggest numbers" do
    array = [3, 6, 9, 12]
    expect(big_diff(array)).to eq(3)
    array = [9, 20, 11, 12]
    expect(big_diff(array)).to eq(8)
  end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.67

  it "should average the middle 2 or 3" do
    array = [2, 6, 9, 11]
    expect(average_median(array)).to eq(7.5)
    array = [9, 8, 2, 4, 7]
    expect(average_median(array)).to eq(4.67)
  end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

  it "should return if the array is balanced" do
    array = [1, 2, 1, 1, 1]
    expect(can_balance(array)).to be(true)
    array = [2, 1, 1, 2, 1]
    expect(can_balance(array)).to be(false)
    array = [3, 4, 1, 2, 3, 1]
    expect(can_balance(array)).to be(true)
  end

# Returns the number of times 2 or more of the same number appear sequentially.
# count_clumps(array)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3

  it "should return the number of clumps" do
    array = [2, 1, 1, 1, 1, 3, 3, 3, 1]
    expect(count_clumps(array)).to eq(2)
    array = [9, 3, 3, 4, 4, 4, 6, 7, 7, 7]
    expect(count_clumps(array)).to eq(3)
  end

end




