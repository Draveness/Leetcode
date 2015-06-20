# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
	nums.sort!
	hash = {}
	i = 0
	len = nums.size

	result = []
	while i < len do

		j = i + 1
		while j < len do
			current = nums[i] + nums[j]
			rest = target - current

			if hash[rest]
				hash[rest].each do |r|
					result << ([nums[i], nums[j]] + r).sort
				end
			end
			j += 1
		end

		k = 0
		while k < i do
			sum = nums[i] + nums[k]
			if hash[sum]
				hash[sum] << [nums[i], nums[k]]
			else
				hash[sum] = [[nums[i], nums[k]]]
			end
			k += 1
		end
	
		i += 1
	end

	result.sort.uniq
end


puts four_sum([-3,-2,-1,0,0,1,2,3], 0).inspect