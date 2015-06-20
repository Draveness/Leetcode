# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
# 
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
	n = length(head) - n - 1
	return head.next if n == -1
    index = 0
    current = head
    while index != n
    	current = current.next
    	index += 1
    end
    current.next = current.next.next
    head
end

def length(node)
	length = 0
	current = node
	while current != nil
		length += 1
		current = current.next
	end
	length
end

class NilClass
	def next
		nil
	end

	def next=(value)
	end
end