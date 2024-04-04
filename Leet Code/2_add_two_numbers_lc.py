class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

# Create linked list l1 with values [2, 4, 3]
l1 = ListNode(2)
l1.next = ListNode(4)
l1.next.next = ListNode(3)

# Create linked list l2 with values [5, 6, 4]
l2 = ListNode(5)
l2.next = ListNode(6)
l2.next.next = ListNode(4)


# dummyHead = ListNode(0)
# tail = dummyHead
# carry = 0


# def addTwoNumbers(l1, l2):
#     dummyHead = ListNode(0)
#     tail = dummyHead
#     carry = 0
#     print("line 25")
#     while l1 or l2 or carry:
#         digit1 = l1.val if l1 is not None else 0
#         digit2 = l2.val if l2 is not None else 0
#         sum = digit1 + digit2 + carry 
#         digit = sum % 10
#         carry = sum // 10
#         newNode = ListNode(digit)
#         tail.next = newNode
#         tail = tail.next

#         l1 = l1.next if l1 is not None else None
#         l2 = l2.next if l2 is not None else None
        
#     result = dummyHead.next
#     dummyHead.next = None
#     return result

# print(addTwoNumbers(l1, l2))





class Solution:
    def addTwoNumbers(l1, l2):
        dummy = ListNode()
        res = dummy
        carry = 0

        while l1 or l2 or carry:
            val_1 = l1.val if l1 else 0 
            val_2 = l2.val if l2 else 0
            carry, digit = divmod(val_1 + val_2 + carry, 10)
            res.next = ListNode(digit)
            res = res.next
            if l1:
                l1 = l1.next
            if l2:
                l2 = l2.next
        return dummy
    print(addTwoNumbers(l1, l2))
