# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    return [] if digits == ""
    strings = [].tap { |result| digits.split("").each { |d| result << table[d] } }
    
    result = strings.shift.split("")
    while nested = strings.shift
        result = result.map do |i|
            nested.split("").map do |j|
                i + j
            end
        end.flatten
    end
    result
end

def table
    {
        "2" => "abc",
        "3" => "def",
        "4" => "ghi",
        "5" => "jkl",
        "6" => "mno",
        "7" => "pqrs",
        "8" => "tuv",
        "9" => "wxyz",
        "0" => " "
    }
end

puts letter_combinations("").inspect
