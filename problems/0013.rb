# Given an Roman numeral convert it to an Integer.
# for values from 1 to 3999

module Problem0013
  def self.roman_to_int(s)
    roman_to_arabic = {
      'M' => 1000,
      'CM' => 900,
      'D' => 500,
      'CD' => 400,
      'C' => 100,
      'XC' => 90,
      'L' => 50,
      'XL' => 40,
      'X' => 10,
      'IX' => 9,
      'V' => 5,
      'IV' => 4,
      'I' => 1
    }
    special_cases = %w[CM CD XC XL IX IV]

    skip = false
    (0...s.length).reduce(0) do |result, i|
      if skip
        skip = false
        result
      elsif i < s.length - 1 && special_cases.include?(s[i..i + 1])
        skip = true
        result + roman_to_arabic[s[i..i + 1]]
      else
        result + roman_to_arabic[s[i]]
      end
    end
  end
end
