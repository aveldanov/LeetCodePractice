/*
 
 Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.

 Note: A leaf is a node with no children.

 Example:

 Given the below binary tree and sum = 22,

       5
      / \
     4   8
    /   / \
   11  13  4
  /  \      \
 7    2      1
 return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
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
    
    func traversTreeInOrder(visit:(_ val: Int)->(Void)){
        visit(val)
        left?.traversTreeInOrder(visit: visit)
        right?.traversTreeInOrder(visit: visit)
    }
    
 }
 
//class Solution {
//    var runningSum = 0
//    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
//        if root == nil{
//            return false
//        }
//
//        runningSum += root!.val
//
//        print("RS", runningSum)
//        if root?.left == nil && root?.right == nil && sum - root!.val == 0{
//            return true
//        }else{
//            runningSum = 0
//            return hasPathSum(root?.left, sum-root!.val) || hasPathSum(root?.right, sum-root!.val)
//        }
//
//
//    }
//}


class Solution {
    var runningSum = 0
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
       
        return helper(root, sum, root?.val ?? 0)

    }
    
    
    func helper(_ root: TreeNode?, _ sum: Int,_ runningSum: Int)->Bool{
        if root == nil{
            return false
        }
        print("node", root?.val)
        print("rs",runningSum)
        if root?.left == nil && root?.right == nil && runningSum == sum{
            return true
        }
        
        return helper(root?.left, sum, (runningSum + (root?.left?.val ?? 0))) || helper(root?.right, sum, (runningSum + (root?.right?.val ?? 0)))
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



let  solution = Solution()

//five.traversTreeInOrder{
//    print($0)
//}


print(solution.hasPathSum(five, 220))

