# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
# 
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    add_two_numbers_rec(l1, l2, 0)
end

def add_two_numbers_rec(l1, l2, flag)
	if l1 || l2
		val = (l1.val + l2.val + flag) % 10
		flag = (l1.val + l2.val + flag) / 10
		l = ListNode.new(val)
		l.next = add_two_numbers_rec(l1.next, l2.next, flag)
		return l
	elsif flag != 0
		return ListNode.new(flag)
	end
end

class NilClass
	def val
		0
	end
	def next
		self
	end
end