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

describe "big_dif(array)" do
  it "should find the difference between the largest number and second largest number" do
    a = [3, 6, 9, 12]
    b = [9, 20, 11, 12]
    expect( big_diff(a) ).to equal(3)
    expect( big_diff(b) ).to equal(8)
  end
end

describe "average median of array" do
  it "returns the average of the 2 (if even) or 3 numbers (if odd) in the middle of the array" do
    a = [2, 6, 9, 11]
    b = [9, 8, 2, 4, 7]
    expect( average_median(a) ).to be_within(0.1).of(7.5)
    expect( average_median(b) ).to be_within(0.1).of(4.66)
  end
end
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

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