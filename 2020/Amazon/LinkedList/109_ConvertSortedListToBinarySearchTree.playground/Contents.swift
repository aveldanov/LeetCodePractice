/*
 Given the head of a singly linked list where elements are sorted in ascending order, convert it to a height balanced BST.

 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

  

 Example 1:


 Input: head = [-10,-3,0,5,9]
 Output: [0,-3,9,-10,null,5]
 Explanation: One possible answer is [0,-3,9,-10,null,5], which represents the shown height balanced BST.
 Example 2:

 Input: head = []
 Output: []
 Example 3:

 Input: head = [0]
 Output: [0]
 Example 4:

 Input: head = [1,3]
 Output: [3,1]

 */



  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }
class Solution {
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        if head == nil{
            return nil
        }
        
        if head?.next == nil{
            return TreeNode(head!.val)
        }
        var preSlow : ListNode? = nil
        var slow : ListNode? = head
        var fast : ListNode? = head
        
        while fast?.next != nil && fast != nil {
            preSlow = slow // mid-1 (new tail of left)
            slow = slow?.next
            fast = fast?.next?.next
        }
     
        preSlow?.next = nil
        
        let current = TreeNode(slow!.val)
        current.left = sortedListToBST(head)
        current.right = sortedListToBST(slow?.next)
        
        return current
        
    }
    
 
}


let negTen = ListNode(-10)
let negThree = ListNode(-3)
let zero = ListNode(0)
let five = ListNode(5)
let nine = ListNode(9)

negTen.next = negThree
negThree.next = zero
zero.next = five
five.next = nine


let solution = Solution()

solution.sortedListToBST(negTen)
