class ListNode<T>{
    var next: ListNode<T>?
    var value: T
    
    init( value: T, next: ListNode<T>?) {
        self.value = value
        self.next = next
    }
}



class LinkedList<T>{
    var head: ListNode<T>?
    
    func displayList(){
        var current = head
        
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    func push(_ value: T){
        if head == nil{
            head = ListNode(value: value, next: nil)
            return
        }
        
        var current = head
        
        while current != nil {
            current = current?.next
        }
        
        head = ListNode(value:value, next: head)
    }
    
    
    func reverseList(){
        var current = head
        var prev: ListNode<T>?
        var next: ListNode<T>?
        
        
//        nil<-3->2->1->nil
        
        while current != nil {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        
    }
    
    }




let linkedList = LinkedList<Int>()


linkedList.push(3)
linkedList.push(2)
linkedList.push(1)
linkedList.displayList()

