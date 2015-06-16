# @param {Integer} num
# @return {String}
def int_to_roman(num)
    int_to_roman_iter(num, "")
end

def table
    {
        1    => "I",
        4    => "IV",
        5    => "V",
        9    => "IX",
        10   => "X",
        40   => "XL",
        50   => "L",
        90   => "XC",
        100  => "C",
        400  => "CD",
        500  => "D",
        900  => "CM",
        1000 => "M"
    }
end

$int_numbers = table.keys.sort.reverse

def int_to_roman_iter(num, roman)
    return roman if num == 0
    $int_numbers.each do |i|
        return int_to_roman_iter(num - i, roman + table[i]) if num >= i
    end
end
