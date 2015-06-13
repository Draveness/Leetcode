# @param {String} s
# @return {String}
def longest_palindrome(s)
    longest = s[0]
    s.split("").each_with_index do |char, index|
    	(longest.length/2..index).each do |n|
    		check1 = s[index-n..index+n+1]
    		check2 = s[index-n..index+n]
    		if is_palindrome(check1)
    			longest = check1 if longest.length < check1.length
    		elsif is_palindrome(check2)
    			longest = check2 if longest.length < check2.length
			else
    			break
    		end
    	end
    end
    longest
end

def is_palindrome(s)
	s == s.reverse
end