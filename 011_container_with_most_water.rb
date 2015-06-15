# @param {Integer[]} height
# @return {Integer}
def max_area(height)
	head = 0
	tail = height.count - 1
    most = most(height, head, tail)

    while head != tail 
    	if height[head] < height[tail]
    		head += 1
    	else
    		tail -= 1
    	end
		current = most(height, head, tail)
		most = current if current > most
    end
    most
end

def most(height, head, tail)
	[height[head], height[tail]].min * (tail - head)
end