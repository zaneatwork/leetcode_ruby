# Given an integer array nums sorted in non-decreasing order, remove the
# duplicates in-place such that each unique element appears only once. The
# relative order of the elements should be kept the same. Then return the number
# of unique elements in nums.
#
# Consider the number of unique elements of nums to be k, to get accepted, you
# need to do the following things:
# - Change the array nums such that the first k elements of nums contain the
#   unique elements in the order they were present in nums initially. The
#   remaining elements of nums are not important as well as the size of nums.
# - Return k.

module Problem0026
  def self.remove_duplicates(nums)
    ## This is me trying to be clever but ultimately slower than the built-in
    ## funcs
    #   k = 1
    #   (nums.length-1...0).step(-1).each do |i|
    #     if nums[i] and nums[i-1] == nums[i]
    #       nums.delete_at i
    #       nums.push nil
    #     else
    #       k += 1
    #     end
    #   end
    #   k
    nums.uniq!&.count
  end
end
