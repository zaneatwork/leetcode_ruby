require 'rspec'
require_relative '../../problems/0189'

shared_examples 'a leetcode #189 solution' do |nums, k|
  old_nums = nums.clone
  Problem0189.rotate(nums, k)

  it 'puts the previous -kth element at index 0' do
    expect(nums[0]).to eq(old_nums[-k])
  end

  it 'puts the previous last element at index k-1' do
    expect(nums[k-1]).to eq(old_nums[-1])
  end
end

describe Problem0189 do
  it_behaves_like 'a leetcode #189 solution', [1,2,3,4,5,6,7], 3
  it_behaves_like 'a leetcode #189 solution', [-1,-100,3,99], 2
end
