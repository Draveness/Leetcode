# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    nums.sort!
    result = nums.take(3).inject(:+)
    min = Float::INFINITY
    len = nums.length
    nums.each_with_index do |num, i|
        j = i + 1
        k = len - 1
        while j < k do
            sum = num + nums[j] + nums[k]
            diff = (sum - target).abs

            return target if diff == 0
            if diff < min
                min = diff
                result = sum
            end

            if sum <= target
                j += 1
            else
                k -= 1
            end
        end
    end
    result
end
