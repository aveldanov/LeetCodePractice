






public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init(_ val: Int) {
       self.val = val
       self.next = nil
   }
}

func displayList(_ head:ListNode?){
    var current = head
    while current != nil {
        print(current?.val ?? "")
        current = current?.next
    }
}

class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil{
            return head
        }
        var prevSlow : ListNode? = nil
        var slow: ListNode? = head
        var fast: ListNode? = head
        
        while fast != nil && fast?.next != nil {
            prevSlow = slow
            slow = slow?.next // becomes a middle of the list
            fast = fast?.next?.next
        }
        
        prevSlow?.next = nil
        
        let l1 = sortList(head) //left side
        let l2 = sortList(slow)  // right side
        
        return merge(l1, l2)
        
    }
    
    func merge(_ left:ListNode?,_ right:ListNode?)->ListNode?{
        let list = ListNode(-1)
        var left = left
        var right = right
        var head = list
        while left != nil && right != nil {
            if left!.val<right!.val {
                head.next = left
                left = left?.next
            }else{
                head.next = right
                right = right?.next
            }
            head = head.next!
        }
        
        if left != nil{
            head.next = left
        }
        
        if right != nil{
            head.next = right
        }
        return list.next
    }
}




let solution = Solution()


//Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,6,1,8,4,5], skipA = 2, skipB = 3

let four1 = ListNode(4)
let one1 = ListNode(1)
let eight1 = ListNode(8)
let four1a = ListNode(4)
let five = ListNode(5)

four1.next = one1
one1.next = eight1
eight1.next = four1a
four1a.next = five

displayList(four1)
print("")
solution.sortList(four1)
displayList(one1)
