# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    longest = 0
    array = []
    hash = {}
    s.split("").each do |c|
        if hash[c]
            loop do 
                first = array.shift
                hash[first] = nil
                break if first == c
            end 
        end
        hash[c] = 1
        array << c
        longest = array.length if array.length > longest
    end
    longest
end