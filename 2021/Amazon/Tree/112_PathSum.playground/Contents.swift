/*
 Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.

 A leaf is a node with no children.

  

 Example 1:


 Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
 Output: true
 Example 2:


 Input: root = [1,2,3], targetSum = 5
 Output: false
 Example 3:

 Input: root = [1,2], targetSum = 0
 Output: false
 */



public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
  }
 



//class Solution {
//    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
//
//
//        return helper(root, targetSum, root?.val ?? 0)
//    }
//
//
//    func helper(_ root: TreeNode?, _ targetSum: Int,_ runningSum: Int)->Bool{
//        if root == nil{
//            return false
//        }
//
//        if root?.left == nil && root?.right == nil && runningSum == targetSum{
//            return true
//        }
//
//
//        return helper(root?.left, targetSum, (runningSum + (root?.left?.val ?? 0))) || helper(root?.right, targetSum, (runningSum + (root?.right?.val ?? 0)))
//    }
//}

class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if root == nil{
            return false
        }
        if root?.left == nil && root?.right == nil{
            return root?.val == targetSum
        }
        
        return hasPathSum(root?.left, targetSum - root!.val) || hasPathSum(root?.right, targetSum - root!.val)
        
    }
    
    
 
}


/*
     5
    / \
    4   8
   /   / \
  11  13  4
 /  \      \
7    2      1
 */

let five = TreeNode(5)
let four1 = TreeNode(4)
let eight = TreeNode(8)
let eleven = TreeNode(11)
let seven = TreeNode(7)
let two = TreeNode(2)
let thirteen = TreeNode(13)
let four2 = TreeNode(4)
let one = TreeNode(1)

five.left = four1
five.right = eight
four1.left = eleven
eleven.left = seven
eleven.right = two
eight.left = thirteen
eight.right = four2
four2.right = one


let solution = Solution()

solution.hasPathSum(five, 22)
