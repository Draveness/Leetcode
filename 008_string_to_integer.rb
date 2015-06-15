# @param {String} str
# @return {Integer}
def my_atoi(str)
    result = str.to_i
    return 2147483647 if result >= 2147483648
    return -2147483648 if result <= -2147483649
    result
end