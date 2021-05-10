class ListNode<T>{
    var next: ListNode?
    var value: T?
    init( _ value: T?, _ next:ListNode?) {
        self.next = next
        self.value = value
    }
    
    
}



class LinkedList<T>{
    var head: ListNode<T>?
    
    func display(){
        var current = head
        
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
        
        
    }
    
    
    func addNode(_ value: T){
        if head == nil{
            
            head = ListNode(value, nil)
        }
        
        var current = head
        // 3->2->1->nil
        while  current != nil {
            current = current?.next
        }
        
//        current = ListNode(value, nil)
//        head = ListNode(val: current?.val, next: head)
        head = ListNode(current?.value, head)
        
        
    }
    
    
}





let list = LinkedList<Int>()

list.addNode(3)
list.addNode(2)
list.addNode(1)

list.display()


