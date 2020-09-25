/*
 Given a non-empty, singly linked list with head node head, return a middle node of linked list.

 If there are two middle nodes, return the second middle node.

  

 Example 1:

 Input: [1,2,3,4,5]
 Output: Node 3 from this list (Serialization: [3,4,5])
 The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
 Note that we returned a ListNode object ans, such that:
 ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
 Example 2:

 Input: [1,2,3,4,5,6]
 Output: Node 4 from this list (Serialization: [4,5,6])
 Since the list has two middle nodes with values 3 and 4, we return the second one.
  

 Note:

 The number of nodes in the given list will be between 1 and 100.
 
 */




//  Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    
    func displayItems(_ head:ListNode){
        var current = head
        while current != nil {
            print(current.val)
            current = current.next!
        }
        
    }
    
  }
 
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var middle = 0
        var count = 0
        var current = head
        while current != nil {
            count+=1
            current = current?.next
        }
        
        middle = count/2
 
        var newNode = ListNode()

            var node = head // 1->2->3->4->5->6
            while middle > 0 {
                node = node?.next //  node = 1->2->3->4->5->6 ===  3,2,1
                middle = middle - 1
//                print("POSITION", middle)
//                print("POS NODE", node?.val)
        }
        newNode = node!  // head(3) -> (4->5->6)
            
        
        
        print(newNode.val)
        print(newNode.next?.val)
        print(newNode.next?.next?.val)
        print(newNode.next?.next?.next?.val)

        
        return newNode
    }

    
}


let ten = ListNode(100, nil)
let nine = ListNode(99, ten)
let eight = ListNode(88, nine)
let seven = ListNode(77, eight)
let six = ListNode(66, seven)
let five = ListNode(55, six)
let four = ListNode(44, five)
let three = ListNode(33, four)
let two = ListNode(22,three)
let head = ListNode(11, two)


let solution = Solution()


let result = solution.middleNode(head)
print(result)
//result?.displayItems(head)

//[65,66,26,77,96,86,11,21,13,80]
