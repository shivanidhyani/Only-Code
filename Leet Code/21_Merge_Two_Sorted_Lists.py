class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

List1 = ListNode()
List2 = ListNode(1, ListNode(3, ListNode(4)))

def mergeTwoLists(list1, list2):
    output = ListNode()
    tail = output
    
    if list1 == None:
        print(list2)
    if list2 == None:
        print(list1) 
    if list1 == None and list2==None:
        print(output)
    
    while list1 and list2:
        if list1.val< list2.val:
            tail.next=list1
            list1=list1.next 
        else:
            tail.next = list2
            list2=list2.next

        tail = tail.next
    tail.next  = list1 if list1 else list2
    return output.next
mergeTwoLists(List1, List2)