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

def partial_match_table(needle)
    table = []

    needle.partial_prefix_string(false).each do |prefix|
        prefix_strings = prefix.partial_prefix_string
        suffix_strings = prefix.partial_suffix_string
        length = 0
        prefix_strings.each do |prefix_string|
             length = prefix_string.length if suffix_strings.include?(prefix_string) && prefix_string.length > length
        end
        table << length
    end

    table

end

class String
    def partial_prefix_string(exclusive = true)
        result = (1..self.length).to_a.map { |index| self.split("").take(index).join }
        if exclusive
            result[0..-2]
        else
            result
        end
    end

    def partial_suffix_string
        (1..self.length).to_a.map { |index| self.split("").drop(index).join }[0..-2]
    end
end

puts partial_match_table("ababab")
