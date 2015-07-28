# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
    result = 0
    sign = dividend * divisor >= 0 ? 1 : -1
    dividend = dividend.abs
    divisor = divisor.abs
    while dividend >= divisor
        dividend -= divisor
        result += 1
    end
    result += 1 if sign < 0 && dividend != 0
    result * sign
end

puts divide(1,-1)
