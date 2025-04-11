# You are given two integer arrays nums1 and nums2, sorted in non-decreasing
# order, and two integers m and n, representing the number of elements in nums1
# and nums2 respectively.
#
# Merge nums1 and nums2 into a single array sorted in non-decreasing order.
#
# The final sorted array should not be returned by the function, but instead be
# stored inside the array nums1. To accommodate this, nums1 has a length of
# m + n, where the first m elements denote the elements that should be merged,
# and the last n elements are set to 0 and should be ignored. nums2 has a length
# of n.

# The solution is to start at the right end of nums1 (index m-1) and the right
# end of nums2 (index n-1) and start filling in the blanks at the end of nums1
# (indexes m+n-1..m) with the greater values until we run out of values.
module Problem0088
  def self.merge(nums1, m, nums2, n)
    # The rightmost index of nums1
    i = m - 1
    # The rightmost index of nums2
    j = n - 1
    # The rightmost index of our combined array.
    k = m + n - 1

    while i >= 0 and j >= 0
      if nums1[i] > nums2[j]
        nums1[k] = nums1[i]
        i -= 1
      else
        nums1[k] = nums2[j]
        j -= 1
      end
      k -= 1
    end

    while j >= 0
      nums1[k] = nums2[j]
      k -= 1
      j -= 1
    end

    nums1
  end
end
