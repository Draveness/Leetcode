# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
    patterns = split_pattern(p)
    result = []
    string_arr = s.split("")
    patterns.each do |pattern|
        if pattern.length == 1
            result << string_arr.shift
        elsif pattern.length == 2
            char = string_arr.shift
            result << char
            while string_arr.first == char
                char = string_arr.shift
                result.last << char
            end
        end
    end
    return false if !string_arr.empty?
    result.zip(patterns).each do |string, pattern|
        if pattern == '.'
            next
        elsif pattern.length == 1
            return false if string != pattern
        elsif pattern.include? "*"
            char_in_pattern = pattern.split("").first
            return false if string != [char_in_pattern].repeat(string.length).join
        end
    end
    true
end

def split_pattern(p)
	result = []
	p.split("").each_with_index do |c, index|
		if c == "*"
			result.last << c
		else
			result << c
		end
	end
	result
end

class Array
  def repeat(num)
    Array.new(num,self).transpose.flatten
  end
end

puts is_match("aaa", "a*").inspect