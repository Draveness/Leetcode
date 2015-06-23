# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    return head if !head || !head.next
    next_pair = head.next.next
    new_head = head.next
    head.next.next = head
    head.next = swap_pairs(next_pair)
    new_head
end
