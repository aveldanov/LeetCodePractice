class LinkNode<T>{
    var next : LinkNode?
    var value : T
    
    init(_ value: T, _ next: LinkNode?) {
        self.value = value
        self.next = next
    }
}


class LinkedList<T>{
   var head: LinkNode<T>?
    
    
    func push(_ value:T){
        if head == nil{
            head = LinkNode(value, nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = LinkNode(value, nil)
        
    }
    
    func displayList(){
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    
    
    
}


let linkedList = LinkedList<Int>()

linkedList.push(3)
linkedList.push(2)
linkedList.push(1)

linkedList.displayList()
