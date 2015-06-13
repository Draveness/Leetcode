# @param {Integer} x
# @return {Integer}
def reverse(x)
    if x > 0
        result = x.to_s.reverse.to_i
        if result > 2 ** 31
            return 0
        else
            return result
        end
    else
         result = -x.to_s.reverse.to_i
         if result <= - 2 ** 31
             return 0
         else
             return result
         end
    end
end