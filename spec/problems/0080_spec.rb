require 'rspec'
require_relative '../../problems/0080'

shared_examples 'a leetcode #80 solution' do |nums|
  nums_copy = nums.clone
  it 'removes duplicates that appear more than twice' do
    Problem0080.remove_duplicates(nums_copy)
    expect(nums_copy).to(satisfy { |arr| arr.detect { |elem| arr.count(elem) < 3 } })
  end

  nums_copy = nums.clone
  it 'returns the number of remaining elements' do
    expect(Problem0080.remove_duplicates(nums_copy)).to eq((nums.select { |n| n }).length)
  end
end

describe Problem0080 do
  it_behaves_like 'a leetcode #80 solution', [1, 1, 1, 2, 2, 3]
  it_behaves_like 'a leetcode #80 solution', [0, 0, 1, 1, 1, 1, 2, 3, 3]
  it_behaves_like 'a leetcode #80 solution', [1]
end
