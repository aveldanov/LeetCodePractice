/*
 Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.

 Note: A leaf is a node with no children.

 Example:

 Given the below binary tree and sum = 22,

       5
      / \
     4   8
    /   / \
   11  13  4
  /  \    / \
 7    2  5   1
 Return:

 [
    [5,4,11,2],
    [5,8,4,5]
 ]
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
    var arr = [Int]()
    var result = [[Int]]()
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        if root == nil{
            return []
        }
        arr.append(root!.val)
        if root?.left == nil && root?.right == nil && sum == root!.val{
            result.append(arr)
        }
        pathSum(root?.left, sum - root!.val)
        pathSum(root?.right, sum - root!.val)
        arr.removeLast()
        return result
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
Return:

[
[5,4,11,2],
[5,8,4,5]
]
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
let five2 = TreeNode(5)


five.left = four1
five.right = eight
four1.left = eleven
eleven.left = seven
eleven.right = two
eight.left = thirteen
eight.right = four2
four2.right = one
four2.left = five2



let  solution = Solution()


solution.pathSum(five, 22)
