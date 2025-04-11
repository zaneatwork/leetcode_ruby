require 'rspec'
require_relative '../../problems/0026'

describe Problem0026 do
  let(:nums) { [0, 0, 1, 1, 1, 2, 2, 3, 3, 4] }

  it 'removes duplicates in place' do
    Problem0026.remove_duplicates nums
    expect(nums).to eq([0, 1, 2, 3, 4])
  end

  it 'counts unique values' do
    expect(Problem0026.remove_duplicates(nums)).to eq(5)
  end
end
