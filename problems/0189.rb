# Given an integer array nums, rotate the array to the right by k steps, where 
# k is non-negative.
# Example:
# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]

module Problem0189
  def self.rotate(nums, k)
    # if we didn't cheat and use the built-in, we could do:
    # k.times do
    #   n = nums.pop
    #   nums.unshift n
    # end

    nums.rotate!(-k)
  end
end
