
public class TreeNode {
  public var value: Int
  public var left: TreeNode?
  public var right: TreeNode?
  
  init(_ value: Int) {
    self.value = value
  }
  
  
  func traversPreOrder(visit:(Int)->Void){
    
    
    visit(value)
    
    left?.traversPreOrder(visit: visit)
    right?.traversPreOrder(visit: visit)
    
    
    
    
  }
  
  
  
  
}






/*

      1                         2
     / \                       / \
    3   2                     1   3
   /                           \   \
  5                             4   7

 Merged tree:
     3
    / \
   4   5
  / \   \
 5   4   7

 */


class Solution{
  
  func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
    var newNode: TreeNode? = nil
    
    if t1 == nil && t2 == nil{
      return newNode

    }else if t1 != nil && t2 != nil{
      newNode = TreeNode(t1!.value + t2!.value)

    }else{

      
      newNode = t1 == nil ? t2 : t1
      
    }

    newNode?.left = mergeTrees(t1?.left, t2?.left)
    newNode?.right = mergeTrees(t1?.right, t2?.right)

    
    return newNode
    
  }
}








let t1one = TreeNode(1)
let t1three = TreeNode(3)
let t1five = TreeNode(5)
let t1two = TreeNode(2)


let t2two = TreeNode(2)
let t2one = TreeNode(1)
let t2four = TreeNode(4)
let t2three = TreeNode(3)
let t2seven = TreeNode(7)

t1one.left = t1three
t1three.left = t1five
t1one.right = t1two

t2two.left = t2one
t2one.right = t2four
t2two.right = t2three
t2three.right = t2seven




t1one.traversPreOrder {
  print($0)
}
print("")

t2two.traversPreOrder {
  print($0)
}



let solution = Solution()

let result = solution.mergeTrees(t1one, t2two)

print("")
result?.traversPreOrder(visit: {
  print($0)
})
