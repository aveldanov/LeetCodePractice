/*
 Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

 For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

     1
    / \
   2   2
  / \ / \
 3  4 4  3
  

 But the following [1,2,2,null,3,null,3] is not:

     1
    / \
   2   2
    \   \
    3    3
  

 Follow up: Solve it both recursively and iteratively.
 */


public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }


class Solution {
   func isSymmetric(_ root: TreeNode?) -> Bool {
    return isMirror(root?.left, root?.right)
   }
    
    func isMirror(_ left: TreeNode?,_ right:TreeNode?)->Bool{
        if left == nil && right == nil{
            return true
        }
        if left?.val != right?.val{
            return false
        }
        
        return isMirror(left?.left, right?.right) && isMirror(left?.right, right?.left)
        
    }
    
}



/*
         5
        / \
       4   8
      /   / \
    11   13  4
    /  \    / \
   7    2  5   1

 */

let five = TreeNode(5)
let four1 = TreeNode(4)
let four2 = TreeNode(4)

let six1 = TreeNode(6)
let six2 = TreeNode(6)

let seven1 = TreeNode(7)
let seven2 = TreeNode(7)

five.left = four1
five.right = four2
four1.left = six1
four2.right = six2
four1.right = seven1
four2.right = seven2


let solution = Solution()

solution.isSymmetric(five)
