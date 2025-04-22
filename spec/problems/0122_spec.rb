require 'rspec'
require_relative '../../problems/0122'

describe Problem0122 do
  it 'returns max profit from the list of prices' do
    expect(Problem0122.max_profit([7,1,5,3,6,4])).to eq(7)
  end
  it 'returns max profit from the list of prices' do
    expect(Problem0122.max_profit([1,2,3,4,5])).to eq(4)
  end
  it 'returns 0 if no profit possible' do
    expect(Problem0122.max_profit([7,6,4,3,1])).to eq(0)
  end
end
