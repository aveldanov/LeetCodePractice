
class Node{
    var val: Int?
    var left: Node?
    var right: Node?
    init(left: Node?, right: Node?, val: Int) {
        self.left = left
        self.right = right
    }
    
    
}



class Tree{
    var left: Node?
    var right: Node?
    
    init(left: Node?, right: Node?) {
        self.left = left
        self.right = right
    }
    
    
}


/*
      1
    /   \
  2        3
 /\
 4 5
 
 
 */


let five = Node(left: nil, right: nil, val: 5)
let four  =  Node(left: nil, right: nil, val: 4)
let three = Node(left: nil, right: nil, val: 3)
let two = Node(left: four, right: five, val: 2)
let one = Node(left: two, right: three, val: 1)

var count = 0
var maxCount = 0

func searchDepth(_ head: Node?, count: Int)->Int{

    let current = head
    var count = count
    
    if current == nil{
        return 0
    }
    
    if current?.left == nil{
        count = 0
    }

    if current?.right == nil{
        count = 0
    }

    
    if current != nil{
        count+=1
        if current?.left != nil{
            searchDepth(current!.left, count: count)
        }
        
    }
    if maxCount <= count{
         maxCount = count
     }
    
    if current != nil{
        count+=1
        if current?.right != nil{
            searchDepth(current!.right, count: count)
        }
    }
    
    
    if maxCount <= count{
        maxCount = count
    }
    
    return maxCount
}


