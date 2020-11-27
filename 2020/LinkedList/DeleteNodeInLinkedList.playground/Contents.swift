/*
 
 
 
 
 
 IN PROGRESS
 
 
 
 
 Write a function to delete a node in a singly-linked list. You will not be given access to the head of the list, instead you will be given access to the node to be deleted directly.

 It is guaranteed that the node to be deleted is not a tail node in the list.

  

 Example 1:


 Input: head = [4,5,1,9], node = 5
 Output: [4,1,9]
 Explanation: You are given the second node with value 5, the linked list should become 4 -> 1 -> 9 after calling your function.
 Example 2:


 Input: head = [4,5,1,9], node = 1
 Output: [4,5,9]
 Explanation: You are given the third node with value 1, the linked list should become 4 -> 5 -> 9 after calling your function.
 Example 3:

 Input: head = [1,2,3,4], node = 3
 Output: [1,2,4]
 Example 4:

 Input: head = [0,1], node = 0
 Output: [1]
 Example 5:

 Input: head = [-3,5,-99], node = -3
 Output: [5,-99]
 */





  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
        
    }
  }
 


class LinkedList{
    var head : ListNode?
    var node : ListNode?
    
    func displayList(){
        print("LIST: ")

        var current = head
        while current != nil {
            print(current?.val ?? "nil")
            current = current?.next
        }
    }
    
    func setupDummyNodes(){
   
        let two = ListNode(3, nil)
         node = ListNode(2, two)
        head = ListNode(1,node)
    }
    

    
}





class Solution {
    func deleteNode(_ node: ListNode?) {
        var deleteNode = node
        var current = node
        var prev: ListNode?
        var next: ListNode?
        
        while current != nil {
       
            next = current 
            
        }
        
        
        
        
    }
}

let sample = LinkedList()
sample.setupDummyNodes()
sample.displayList()


let solution = Solution()


print(solution.deleteNode(sample.node))


