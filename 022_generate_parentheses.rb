# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    result = ["("]
    (0...2*n).each do |i|
    	result = result.map do |s|
    		generate(s, n)
    	end.flatten
    end
    result
end

def count(s)
	return s.count('('), s.count(')')
end

def generate(s, n)
	left, right = count(s)
	if left < n
		if right < left
			return [s + ")", s + "("]
		else
			return [s + "("]
		end
	else
		if right < left
			return [s + ")"]
		else
			return [s]
		end
	end
end