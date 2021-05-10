class ListNode<T>{
    var next: ListNode?
    var val: T?
    
    
    init(val:T?, next:ListNode?) {
        self.val = val
        self.next = next
    }
    
    
    
    
}


class LinkedList<T>{
    var head: ListNode<T>?
    
    func displayList(){
        var current = head
        while current != nil {
            print(current?.val ?? "")
            current = current?.next
        }
    }
    
    func addNode(_ val: T){
        if head == nil{
            return head = ListNode(val: val, next: nil)
        }
        var current = head
        
        while current != nil {
            current = current?.next
        }
        
        head = ListNode(val: current?.val, next: head)
        
    }
    
    func reverese(){
        if head == nil{
            return
        }
        
        var current = head
        var prev: ListNode<T>?
        var next: ListNode<T>?
        
        // nil<-1->2->3->nil
        
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
            
        }
        
    }
    
    
}


let linkedList = LinkedList<Int>()


linkedList.addNode(3)
linkedList.addNode(2)
linkedList.addNode(1)
linkedList.displayList()
