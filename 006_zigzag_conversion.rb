# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
	return s if num_rows == 1
	result = []
	(0...num_rows).each { |n| result << [] }
	row = 0
	sign = -1
	s.split("").each do |char|
		result[row] << char
		sign *= -1 if row == num_rows-1 || row == 0
		row += sign
	end
	result.join
end