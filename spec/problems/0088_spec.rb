require 'rspec'
require_relative '../../problems/0088'

describe Problem0088 do
  let(:nums1) { [1, 2, 3, 0, 0, 0] }
  let(:m) { 3 }
  let(:nums2) { [2, 5, 6] }
  let(:n) { 3 }

  it 'merges all elements of two arrays into the first array' do
    Problem0088.merge(nums1, m, nums2, n)
    expect(nums1).to include(*nums1)
    expect(nums1).to include(*nums2)
  end
end
