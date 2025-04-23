require 'rspec'
require_relative '../../problems/0012'

describe Problem0012 do
  it 'converts 1 to I' do
    expect(Problem0012.int_to_roman(1)).to eq("I")
  end
  it 'converts 3749 to MMMDCCXLIX' do
    expect(Problem0012.int_to_roman(3749)).to eq("MMMDCCXLIX")
  end
  it 'converts 58 to LVIII' do
    expect(Problem0012.int_to_roman(58)).to eq("LVIII")
  end
  it 'converts 1994 to MCMXCIV' do
    expect(Problem0012.int_to_roman(1994)).to eq("MCMXCIV")
  end
end
