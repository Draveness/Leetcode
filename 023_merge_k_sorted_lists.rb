# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
    return nil if lists.empty?

    ending = lists.size - 1
    while ending > 0
        beginning = 0
        while beginning < ending
            lists[beginning] = merge_two_lists(lists[beginning], lists[ending])
            beginning += 1
            ending -= 1
        end
    end
    lists.first
end

def merge_two_lists(list_1, list_2)
    head = ListNode.new(0)
    current = head

    while list_1 && list_2
        if list_1.val < list_2.val
            current.next = list_1
            list_1 = list_1.next
        else
            current.next = list_2
            list_2 = list_2.next
        end
        current = current.next
    end

    current.next = list_1 ? list_1 : list_2

    head.next
end
