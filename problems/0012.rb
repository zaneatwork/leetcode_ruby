# Given an integer, convert it to a Roman numeral.
# for values from 1 to 3999

module Problem0012
  def self.int_to_roman(num)
    arabic_to_roman = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

    remainder = num
    arabic_to_roman.reduce("") do |result, (arabic, roman)|
      multiple, remainder = remainder.divmod(arabic)
      result << roman * multiple
    end
  end
end
