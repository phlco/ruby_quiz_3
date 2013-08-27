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


# more in quiz.rb!

# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8
  it "should subtract the second largest number from the largest" do
    expect(big_diff([3, 6, 9, 12])).to eql(3)
    expect(big_diff([9, 20, 11, 12])).to eql(8)
  end

# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

  it "should return the average of the 2 or 3 numbers in the middle of the array" do
    expect(average_median([2, 6, 9, 11])).to eql(7.5)
    # expect(average_median([9, 8, 2, 4, 7])).to eql(4.66)
  end


# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
# can_balance(array)
#  [1, 2, 1, 1, 1] => true
#  [2, 1, 1, 2, 1] => false
#  [3, 4, 1, 2, 3, 1] => true

  it "should return true if you can split the array into parts where the sum of one portion equals the sum of the other portion." do
    expect(can_balance([1, 2, 1, 1, 1])).to be(true)
    expect(can_balance([2,1,1,2,1])).to be(false)
    expect(can_balance([3,4,1,2,3,1])).to be(true)
  end


 it "Returns the number of times 2 or more of the same number appear sequentially." do
  expect(count_clumps([2, 1, 1, 1, 1, 3, 3, 3, 1])).to eql(2)
#  [2, 1, 1, 1, 1, 3, 3, 3, 1] => 2
  expect(count_clumps([9, 3, 3, 4, 4, 4, 6, 7, 7, 7])).to eql(3)
#  [9, 3, 3, 4, 4, 4, 6, 7, 7, 7] => 3
  end
end





