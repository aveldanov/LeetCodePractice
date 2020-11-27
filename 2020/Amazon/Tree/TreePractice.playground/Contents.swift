class ListNode<T>{
    var next: ListNode?
    var val: T
    init(_ val: T, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
    
}


class LinkedList<T>{
    var head: ListNode<T>?
    
    func displayList(){
        
        var current = head
        while current?.next != nil {
            print(current!.val)
            current = current?.next
        }
    }
    
    
    
    func push(_ val: T){
        if head == nil{
           head = ListNode(val, nil)
        }
        
        
     var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        head = ListNode(val, head)
    }
    
//    var count = 0
//    func insertAt(value: T, atIndex: Int){
//        if  head == nil {
//            head = ListNode(value, nil)
//        }
//
//        var current = head
//        while current?.next != nil && (count != atIndex){
//
//            current = current?.next
//        }
//
//        head?.next = ListNode(value, head?.next)
//
//    }
    
    var count = 0
   func insertNodeAtPosition(llist: ListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
       var llist = llist
       if llist == nil{
           llist = ListNode(llist: llist?, data: data, next: nil)
       }
       
       var current = llist
       while current?.next != nil && count != position{
           current = current?.next
       }
       
        llist?.next = ListNode(llist: llist?.next, data: data, position: position)
        return llist
   }
    
    
}


let linkedList = LinkedList<Int>()

linkedList.push(3)
linkedList.push(2)
linkedList.push(1)
linkedList.insertAt(value: 5, atIndex: 1)

linkedList.displayList()
