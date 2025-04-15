require 'rspec'
require_relative '../../problems/0169'

shared_examples 'a leetcode #169 solution' do |nums|
  it 'returns the majority element, the most common in the array' do
    expect(nums.count(Problem0169.majority_element(nums))).to be >= (nums.length/2)
  end
end

describe Problem0169 do
  it_behaves_like 'a leetcode #169 solution', [3,2,3]
  it_behaves_like 'a leetcode #169 solution', [2,2,1,1,1,2,2]
end
