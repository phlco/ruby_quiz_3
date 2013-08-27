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

describe "creates method" do
  it "should create a method" do
    quiz = Quiz.new
  end
end

# Find the largest number and second largest number
# Then subtract the difference.
# big_diff(array)
#  [3, 6, 9, 12] => 3
#  [9, 20, 11, 12] => 8

describe "Adds numbers to an array" do
  it "should add numbers to an array" do
    quiz = Quiz.new
    expect(quiz.add_numbers(3)).to eq([3])
    expect(quiz.add_numbers(6)).to eq([3,6])
    expect(quiz.add_numbers(9)).to eq([3,6,9])
    expect(quiz.add_numbers(12)).to eq([3,6,9,12])
  end

describe "Find the largest number and second largest number" do
  it "should show numbers in hash" do
    quiz = Quiz.new
    expect(quiz.add_numbers(3)).to eq([3])
    expect(quiz.add_numbers(6)).to eq([3,6])
    expect(quiz.add_numbers(9)).to eq([3,6,9])
    expect(quiz.add_numbers(12)).to eq([3,6,9,12])
    expect(quiz.subtract_smallest_from_largest).to eq(3)
  end
end

describe "Find the largest number and second largest number" do
  it "should show numbers in hash" do
    quiz = Quiz.new
    expect(quiz.add_numbers(9)).to eq([9])
    expect(quiz.add_numbers(20)).to eq([9,20])
    expect(quiz.add_numbers(11)).to eq([9,20,11])
    expect(quiz.add_numbers(12)).to eq([9,20,11,12])
    expect(quiz.subtract_smallest_from_largest).to eq(8)
  end
end
# return the average of the 2 or 3 numbers in the middle of the array
# (2 if the array has an even number of elements)
# (3 if the array has an odd number of elements).
# average_median(array)
#  [2, 6, 9, 11] => 7.5
#  [9, 8, 2, 4, 7] => 4.66

describe "return the average" do
  it "should return the average of the 2 or 3 numbers in the middle of the array" do
    quiz = Quiz.new
    expect(quiz.add_numbers(2)).to eq([2])
    expect(quiz.add_numbers(6)).to eq([2,6])
    expect(quiz.add_numbers(9)).to eq([2,6,9])
    expect(quiz.add_numbers(11)).to eq([2,6,9,11])
    expect(quiz.average_of_middle).to eq(7.5)
  end
end

describe "return the average" do
  it "should return the average of the 2 or 3 numbers in the middle of the array" do
    quiz = Quiz.new
    expect(quiz.add_numbers(9)).to eq([9])
    expect(quiz.add_numbers(8)).to eq([9,8])
    expect(quiz.add_numbers(2)).to eq([9,8,2])
    expect(quiz.add_numbers(4)).to eq([9,8,2,4])
    expect(quiz.add_numbers(7)).to eq([9,8,2,4,7])
    expect(quiz.average_of_middle).to eq(4.66)
  end
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