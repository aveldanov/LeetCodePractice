/*
 Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists.

  

 Example 1:


 Input: l1 = [1,2,4], l2 = [1,3,4]
 Output: [1,1,2,3,4,4]
 Example 2:

 Input: l1 = [], l2 = []
 Output: []
 Example 3:

 Input: l1 = [], l2 = [0]
 Output: [0]
 */



  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    

    
    
  }

func displayList(_ head:ListNode?){
    var current = head
    while current != nil {
        print(current?.val ?? "")
        current = current?.next
    }
}
 
//class Solution {
//    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var list = ListNode()
//        var head = list
//        var l1 = l1
//        var l2 = l2
//
//        while(l1 != nil && l2 != nil) {
//            if(l1!.val < l2!.val) {
//                head.next = l1
//                l1 = l1!.next
//            }else{
//                head.next = l2
//                l2 = l2!.next
//            }
//            head = head.next!
//        }
//        if(l1 != nil) {
//            head.next = l1!
//        }
//        if(l2 != nil) {
//            head.next = l2!
//        }
//
//        return list.next
//
//    }
//}


class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil{
            return l2
        }
        if l2 == nil{
            return l1
        }
        
        var result: ListNode?
        
        if l1!.val<l2!.val{
            result = l1
            result?.next = mergeTwoLists(l1?.next, l2)
        }else{
            result = l2
            result?.next = mergeTwoLists(l1, l2?.next)
        }
        
        return result
    }
}




let one1 = ListNode(1)
let two1 = ListNode(2)
let five1 = ListNode(5)

one1.next = two1
two1.next = five1

let three2 = ListNode(3)
let four2 = ListNode(4)
let six2 = ListNode(6)

three2.next = four2
four2.next = six2


let solution = Solution()

//displayList(one1)
//displayList(three2)

print(solution.mergeTwoLists(one1, three2)?.val)
displayList(one1)
