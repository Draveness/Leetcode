# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.map! { |num| if num == val then num = nil else num end }.compact!
    nums.length
end

puts remove_element([2], 3)
