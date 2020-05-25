

  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?

      public init(_ val: Int) {
          self.val = val
 
      }
    
    func trePreOrderTraversal(visit:(Int)->Void ){
      
      visit(val)
      left?.trePreOrderTraversal(visit: visit)
      right?.trePreOrderTraversal(visit: visit)
    }
    
    
    
  }
 
class Solution {

//      print("ROOT:  ", root?.val)
//      if root == nil{
//        return true
//      }
//
//      if root?.left != nil && root?.val != root?.left?.val{
//        return false
//      } else if root?.right != nil && root?.val != root?.right?.val{
//        return false
//      }
//
//      return isUnivalTree(root?.left) && isUnivalTree(root?.right)
      
  
      func isUnivalTree(_ root: TreeNode?) -> Bool {
          guard let root = root else { return false }
          return univalTreeHelper(root, val: root.val)
      }

      func univalTreeHelper(_ root: TreeNode?, val: Int) -> Bool {
          guard let root = root else { return true }
          var matches = root.val == val ? true : false
          return matches && univalTreeHelper(root.left, val: val) && univalTreeHelper(root.right, val: val)
      }
  
}

/*
  1
  /\
  2 3
  /\ \
4   5  6

*/



let one = TreeNode(1)
let two = TreeNode(1)
let three = TreeNode(1)
let four = TreeNode(1)
let five = TreeNode(1)
let six = TreeNode(1)


one.left = two
one.right = three
two.left = four
two.right = five
three.right = six


//
//one.trePreOrderTraversal {
//  print($0)
//}


let solution = Solution()

print(solution.isUnivalTree(one))
