# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    hash = {}
    index = []
    nums.each_with_index do |num, i|
        if hash[num]
            index << i
        else
            hash[num] = i
        end
    end
    index.reverse.each do |i|
        nums.delete_at(i)
    end
    nums.length
end
