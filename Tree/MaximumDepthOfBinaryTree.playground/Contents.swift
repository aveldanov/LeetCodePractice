
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
   
      }
    
    func traversePreOrder(visit:(Int)->Void){
      visit(val)
      
      left?.traversePreOrder(visit: visit)
      right?.traversePreOrder(visit: visit)
      
      
    }
    
    
  }
 
/*
 Given binary tree [3,9,20,null,null,15,7],

     3
    / \
   9  20
     /  \
    15   7
 return its depth = 3.
 
 */


class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
    
      if root == nil{
        return 0
      }
      
      return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
    }
}




let three = TreeNode(3)
let nine = TreeNode(9)
let twenty = TreeNode(20)
let fifteen = TreeNode(15)
let seven = TreeNode(7)

three.left = nine
three.right = twenty
twenty.left = fifteen
twenty.right = seven


//
//three.traversePreOrder { print($0)
//}


let solution = Solution()

print(solution.maxDepth(three))
