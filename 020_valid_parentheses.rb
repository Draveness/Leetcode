# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.split("").each do |c|
        if is_left(c)
            stack.push(c)
        elsif is_right(c)
            last = stack.pop
            return false if last != corresponding(c)
        end
    end
    stack.empty?
end

def is_left(c)
    c == '[' || c == '{' || c == '('
end

def is_right(c)
    c == ']' || c == '}' || c == ')'
end

def corresponding(c)
    hash = {']' => '[', '}' => '{', ')' => '('}
    hash[c]
end
