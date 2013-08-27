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
describe 'big diff' do 
	it "should take the difference of the two larges numbers" do
		expect(big_diff([1,7,4,2,10])).to eq 3
		expect(big_diff([8,3,4,26,22])).to eq 4
	end

	it "should return zero if the largest number appears twice" do
		expect(big_diff([1,2,4,10,10])).to eq 0
	end
end



# return the average of the 2 or 3 numbers in the middle of the array
describe 'average_median' do
	it "should return the average of 2 middle elements if array is even" do
		expect(average_median([2,7,8,10])).to eq 7.5
	end

	it "should return the average of 3 middle elements if array is odd" do
		expect(average_median([2,3,4,5,10])).to eq 4
	end

	it "shold return the average for two-value arrays" do
		expect(average_median([2, 8])).to eq 5
	end
end

# return true if you can split the array into parts
# where the sum of one portion equals the sum of the other portion.
describe 'can_balance' do 
	it "should return true if the array can be split into equal sections" do
		expect(can_balance([1,1,1,2,1])).to be true
	end

	it 'should return false if the array can"t be split into equal sections' do
		expect(can_balance([100,2])).to be false
	end

	it 'should return false if the array is of length 1' do
		expect(can_balance([1])).to be false
	end
end

# Returns the number of times 2 or more of the same number appear sequentially.
describe 'clumps' do
	
end