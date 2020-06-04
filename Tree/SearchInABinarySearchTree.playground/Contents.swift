
 public class TreeNode {
     public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?

      public init(_ val: Int) {
          self.val = val

      }
  
  
  
  
  func traversPreOrder(visit:(Int)->Void){
    
    
    visit(val)
    
    left?.traversPreOrder(visit: visit)
    right?.traversPreOrder(visit: visit)
    
    
    
    
  }
  }
 
/*
Given the tree:
        4
       / \
      2   7
     / \
    1   3

And the value to search: 2
You should return this subtree:

      2
     / \
    1   3

*/

class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
     
              if root == nil{
        return nil
      }else if root?.val == val {
        return root
      }else if root!.val > val{
        return self.searchBST(root?.left, val)
        
      }else{
        return self.searchBST(root?.right, val)

      }

    }
}








let four = TreeNode(4)
let two = TreeNode(2)
let seven = TreeNode(7)
let one = TreeNode(1)


let three = TreeNode(3)


four.left = two
four.right = seven
two.left = one
two.right = three


let solution = Solution()


let result = solution.searchBST(four, 2)

result?.traversPreOrder(visit: {
  print($0)
})
