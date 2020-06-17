
  

import Foundation

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class Solution {
  var sum = 0
  var power = 0
    func getDecimalValue(_ head: ListNode?) -> Int {
      
      if head == nil{
        return sum
      }
      
      // 10111
//      sum = (sum<<1) | head!.val
      sum = sum*2 + head!.val // 10111 ->       1*2^4+0^2^3+1*2^2+1*2^1+1*2^0 = 16 + 4 +2 +1
      // 1 // 1*2 + 0 // 2*2 + 1 // 5*2 + 1 // 22*2 + 1 = 23
//      print("val", head!.val)
//
//      print("power", power)
//      sum = sum + Int(pow(Double(head!.val*2), Double(power)))
//
//      print("sum", sum)
//      power += 1
//print("")
      getDecimalValue(head?.next)
//
      
      return sum
      
  }
}




/*
 
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

var z = 40
print(z<<1)

let one = ListNode(1)
let two = ListNode(0)
let three = ListNode(1)
let four = ListNode(1)
let five = ListNode(1)


one.next = two
two.next = three
three.next = four
four.next = five


let solution = Solution()

print(solution.getDecimalValue(one))
