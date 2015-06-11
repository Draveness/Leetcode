# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
	m, n = nums1.length, nums2.length
	nums1, nums2, m, n = nums2, nums1, n, m if m > n

	if m <= 2
		return calculate((nums1+nums2).sort) 
	end

	median1 = calculate(nums1)
	median2 = calculate(nums2)

	len1 = half_length(m)
	len2 = half_length(n)

	if nums1[len1] > nums2[len2]
		return find_median_sorted_arrays(nums1[0...m-len1], nums2[len1..-1])
	else
		return find_median_sorted_arrays(nums1[len1..-1], nums2[0...n-len1])
	end
end

def calculate(nums)
	return nums[(nums.length - 1) / 2] if nums.length % 2 != 0

	startIndex = (nums.length / 2.0) - 1
	endIndex = (nums.length / 2.0)
	arr = nums[startIndex..endIndex]
	return 0 if arr == nil
	arr.inject(:+).to_f / arr.length
end

def half_length(m)
	m.even? ? m / 2 - 1 : (m - 1) / 2
end

puts find_median_sorted_arrays([1], [])