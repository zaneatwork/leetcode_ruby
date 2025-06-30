require 'rspec'
require_relative '../../problems/0013'

describe Problem0013 do
  it 'converts I to 1' do
    expect(Problem0013.roman_to_int("I")).to eq(1)
  end
  it 'converts MMMDCCXLIX to 3749' do
    expect(Problem0013.roman_to_int("MMMDCCXLIX")).to eq(3749)
  end
  it 'converts LVIII to 58' do
    expect(Problem0013.roman_to_int("LVIII")).to eq(58)
  end
  it 'converts MCMXCIV to 1994' do
    expect(Problem0013.roman_to_int("MCMXCIV")).to eq(1994)
  end
end
