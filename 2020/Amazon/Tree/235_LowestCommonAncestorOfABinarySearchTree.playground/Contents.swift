/*
 
 Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

 According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

  

 Example 1:


 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
 Output: 6
 Explanation: The LCA of nodes 2 and 8 is 6.
 Example 2:


 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
 Output: 2
 Explanation: The LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.
 Example 3:

 Input: root = [2,1], p = 2, q = 1
 Output: 2
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
 

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil{
            return nil
        }

        if p!.val < root!.val && q!.val < root!.val{
            return lowestCommonAncestor(root?.left, p, q)
        }else if p!.val > root!.val && q!.val > root!.val{
            return lowestCommonAncestor(root?.right, p, q)
        }else{
            return root
        }
        
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

solution.lowestCommonAncestor(five, eleven, two)

