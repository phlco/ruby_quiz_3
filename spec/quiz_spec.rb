require "spec_helper"
require_relative '../quiz'

#                )\._.,--....,'``.
#  .b--.        /;   _.. \   _\  (`._ ,.
# `=,-,-'~~~   `----(,_..'--(,_..'`-.;.'

#this is already an improvement from the other day when I couldn't get
#a class to test properly
describe Quiz do

  it "should have a method topic, which returns an array" do
    quiz = Quiz.new
    expect(quiz.topics).to eq(["ruby", "rspec", "testing"])
    # expect(QUIZ_TOPICS).to include("ruby")
    # expect(QUIZ_TOPICS).to include("rspec")
    # expect(QUIZ_TOPICS).to include("testing")
  end

# more in quiz.rb!
  it "should have a love method that returns 'quizzes'" do
    quiz = Quiz.new
    expect(quiz.love).to eq('quizzes')
  end

#ok the setup is good now, lets do the quiz.


  it " takes largest & second largest number then subtracts the difference." do
  quiz = Quiz.new #before :each do wasn't scoping properly
  expect(quiz.big_diff([3, 6, 9, 12])).to eq(3)
  expect(quiz.big_diff([9, 20, 11, 12])).to eq(8)
  end

  it "returns the avg of the 2 or 3 numbers in the middle of the array" do
  quiz = Quiz.new
  expect(quiz.average_median([2, 6, 9, 11])).to eq(7.5)
  # expect(quiz.average_median([9, 8, 2, 4, 7])).to eq(4.66)
   # return the average of the 2 or 3 numbers in the middle of the array
  # (2 if the array has an even number of elements)
  # (3 if the array has an odd number of elements).
  # average_median(array)
  #  [2, 6, 9, 11] => 7.5
  #  [9, 8, 2, 4, 7] => 4.66
  end


  it "returns true if you can split the array into parts
  where the sum of one portion equals the sum of the other portion." do
  quiz = Quiz.new
  expect(quiz.can_balance([1, 2, 1, 1, 1])).to be_true
  expect(quiz.can_balance([2, 1, 1, 2, 1])).to be_false
  expect(quiz.can_balance([3, 4, 1, 2, 3, 1])).to be_true
  end

  it "Returns the number of times 2 or more of the same number
  appear sequentially." do
  quiz = Quiz.new
  expect(quiz.count_clumps([2, 1, 1, 1, 1, 3, 3, 3, 1])).to eq(2)
  expect(quiz.count_clumps([9, 3, 3, 4, 4, 4, 6, 7, 7, 7])).to eq(3)
  end


end