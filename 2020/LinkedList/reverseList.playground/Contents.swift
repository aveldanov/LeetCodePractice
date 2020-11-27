


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


let three = ListNode(3, nil)
let two = ListNode(2, three)
let one = ListNode(1,two)

    
func displayList(head: ListNode?){
        print("LIST: ")
        
        var current = head
        while current != nil {
            print(current?.val ?? -1)
            current = current?.next
        }
    }
    
    
    
displayList(head: one)







    func reverse(_ head: ListNode?) -> ListNode?{
        var current = head
        var prev: ListNode?
        var next: ListNode?
        
        while current != nil {
            print("current1",current?.val)

            next = current?.next // nil->1->2->3
            print("next",next?.val)
            current?.next = prev
            print("prev",prev?.val)
            prev = current
            print("current",current?.val)
            current = next
        }
        
        
        
        return prev
    }


let reversedList = reverse(one)

displayList(head: reversedList)





