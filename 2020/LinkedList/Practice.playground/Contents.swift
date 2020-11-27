



class ListNode{
    public var next: ListNode?
    public var val: Int

    public init(_ val: Int , _ next: ListNode? ) {
        self.val = val
        self.next = next
    }
    
    
    
    
}

let three = ListNode(3, nil)
let two = ListNode(2, three)
let one = ListNode(1,two)


    
func displatList(head: ListNode?){
        var current = head
        while current != nil{
        print(current?.val ?? -1)
        current = current?.next
        }
    }


func reverse(head: ListNode?){
    var current = head
    var prev: ListNode?
    var next: ListNode?
}
    
    
displatList(head: one)
    
    

