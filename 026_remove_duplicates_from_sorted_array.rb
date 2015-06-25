# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    hash = {}
    nums.each_with_index do |num, i|
        if hash[num]
            nums.delete(num)
        else
            hash[num] = i
        end
    end
    nums.length
end
