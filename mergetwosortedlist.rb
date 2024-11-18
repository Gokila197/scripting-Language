class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def merge_two_lists(l1, l2)
  dummy = ListNode.new(0)
  current = dummy
  while l1 && l2
    if l1.val <= l2.val
      current.next = l1
      l1 = l1.next
    else
      current.next = l2
      l2 = l2.next
    end
    current = current.next
  end
  current.next = l1 || l2
  dummy.next
end
