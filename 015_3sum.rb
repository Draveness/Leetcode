# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    nums.sort!
    [].tap do |sums|
        nums.each_with_index do |small, si|
            nums.reverse.each_with_index do |large, li|
                value = -small - large
                next if si + li == nums.count || value < small || value > large
                sums << [small, value, large] if nums[si+1...nums.count-li-1].include?(value)
            end
        end
    end.uniq
end
