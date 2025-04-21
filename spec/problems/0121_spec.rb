require 'rspec'
require_relative '../../problems/0121'

describe Problem0121 do
  it 'returns max profit from the list of prices' do
    expect(Problem0121.max_profit([7,1,5,3,6,4])).to eq(5)
  end
  it 'returns 0 if no profit possible' do
    expect(Problem0121.max_profit([7,6,4,3,1])).to eq(0)
  end
end
