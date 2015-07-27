# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle == ""
    return -1 if needle.nil? || haystack.nil?

    haystack_arr = haystack.split('')
    needle_arr = needle.split('')
    len = needle.length - 1
    
    (0..haystack_arr.length).to_a.each do |hi|
        needle_arr.each_with_index do |s, ni|
            c = haystack_arr[hi + ni]
            break if c != s
            return hi if ni == len
        end
    end
    -1
end