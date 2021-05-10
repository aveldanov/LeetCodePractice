/*
 Given the head of a linked list, rotate the list to the right by k places.

  

 Example 1:


 Input: head = [1,2,3,4,5], k = 2
 Output: [4,5,1,2,3]
 Example 2:


 Input: head = [0,1,2], k = 4
 Output: [2,0,1]
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

class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil{
              return nil
          }
          var head = head
          var count = 1
          var secondCount = 0
          var current = head
          var j = 1
          while current?.next != nil {
              current = current?.next
              count+=1
          }
          print(current?.val)
          current?.next = head // 1->2->3->4->5->...1

           // var j = count-(k%count)
           print(count)
           print(count - k%count)
           
           while j < count-k%count {
               head = head?.next
               j+=1
           }
           
   //        [1,2]
   //        1
          print("head.val",head?.val)

          current = head?.next
          head?.next = nil
          
          return current
    }
}

let one = ListNode(1)
let two = ListNode(2)// head -1
let three = ListNode(3)
let four = ListNode(4) // current
let five = ListNode(5)

one.next = two
two.next = three
three.next = four
four.next = five

let solution = Solution()

print(solution.rotateRight(one, 2)?.val)

displayList(one)
