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
    return head if head.next == nil
    current_node = head 
    next_node = current_node.next
    head = next_node

    while current_node && next_node
        next_first_node = next_node.next
        current_node.next = next_node.next.next ? next_node.next.next : next_node.next
        next_node.next = current_node
        current_node = next_first_node
        next_node = next_node.next.next
    end

    next_node.next = nil

    head
end

class NilClass
    def next
        nil
    end
    def next=(value)
        nil
    end
end
