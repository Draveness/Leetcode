# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman_to_int_iter(s, 0)
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
    }.invert
end

$roman_numbers = table.keys.reverse

def roman_to_int_iter(s, integer)
    return integer if s == ""
    $roman_numbers.each do |roman|
        return roman_to_int_iter(s[roman.length..-1], integer + table[roman]) if s.start_with?(roman)
    end
end
