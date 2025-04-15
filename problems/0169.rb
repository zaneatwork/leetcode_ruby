# Given an array nums of size n, return the majority element.
#
# The majority element is the element that appears more than ⌊n / 2⌋ times. You 
# may assume that the majority element always exists in the array.

module Problem0169
  def self.majority_element(nums)
    h = Hash.new

    nums.each do |num|
      if h[num]
        h[num] += 1
      else
        h[num] = 1
      end
    end

    (h.max_by{|k,v| v}).first
  end
end
