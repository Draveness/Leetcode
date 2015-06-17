# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    longest = strs.first.nil? ? "" : strs.first
    strs.each do |str|
        if str.start_with? longest
            next
        else
            while !str.start_with? longest
                longest = longest[0...-1]
                return "" if longest == ""
            end
        end
    end
    longest
end

