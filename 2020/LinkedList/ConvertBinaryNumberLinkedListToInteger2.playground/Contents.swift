/*
 
 Given head which is a reference node to a singly-linked list. The value of each node in the linked list is either 0 or 1. The linked list holds the binary representation of a number.
 
 Return the decimal value of the number in the linked list.
 
 
 
 Example 1:
 
 
 Input: head = [1,0,1]
 Output: 5
 Explanation: (101) in base 2 = (5) in base 10
 Example 2:
 
 Input: head = [0]
 Output: 0
 Example 3:
 
 Input: head = [1]
 Output: 1
 Example 4:
 
 Input: head = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
 Output: 18880
 Example 5:
 
 Input: head = [0,0]
 Output: 0
 
 
 */



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
        
    }
}





class LinkedList{
    var head: ListNode?
    func displayList(){
        print("LIST: ")

        var current = head
        while current != nil{
            print(current?.val ?? "nil")
            current = current?.next
        }
    }
    
    // 1->2->3-nil
    func setupDummyNodes(){
        let two = ListNode(1, nil)
        let one = ListNode(0, two)
        head = ListNode(1, one)
    }
    
    
}





class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var current = head
        var sum = 0
        while current != nil {
            sum = sum*2 + current!.val
            current = current?.next
            
        }
    
        return sum
    }
    
}


let sampleList = LinkedList()
sampleList.setupDummyNodes()
sampleList.displayList()


var solution = Solution()

print(solution.getDecimalValue(sampleList.head))

