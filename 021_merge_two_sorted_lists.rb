# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    head = ListNode.new(0)
    current = head
    while l1 && l2
        if l1.val < l2.val
            current.next = ListNode.new(l1.val)
            l1 = l1.next
        else
            current.next = ListNode.new(l2.val)
            l2 = l2.next
        end
        current = current.next
    end
    current.next = l1 if l1
    current.next = l2 if l2
    head.next
end