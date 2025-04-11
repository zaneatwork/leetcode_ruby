require 'rspec'
require_relative '../../problems/0027'

describe Problem0027 do
  let(:nums) { [0, 1, 2, 2, 3, 0, 4, 2] }

  it 'removes element from a list in place' do
    Problem0027.remove_element(nums, 2)
    expect(nums).not_to include(2)
  end

  it 'replaces matched elements with nil at end' do
    Problem0027.remove_element(nums, 2)
    expect(nums).to end_with(nil)
  end
end
