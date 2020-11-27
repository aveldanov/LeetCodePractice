
/*
 Consider all the leaves of a binary tree, from left to right order, the values of those leaves form a leaf value sequence.



 For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).

 Two binary trees are considered leaf-similar if their leaf value sequence is the same.

 Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.

  

 Example 1:

 
 
 

 Input: root1 = [3,5,1,6,2,9,8,null,null,7,4], root2 = [3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]
 Output: true
 Example 2:

 Input: root1 = [1], root2 = [1]
 Output: true
 Example 3:

 Input: root1 = [1], root2 = [2]
 Output: false
 Example 4:

 Input: root1 = [1,2], root2 = [2,2]
 Output: true
 Example 5:


 Input: root1 = [1,2,3], root2 = [1,3,2]
 Output: false
 
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
    
    func traversPostOrder(visit:(Int)->Void){
      
      left?.traversPostOrder(visit: visit)
      right?.traversPostOrder(visit: visit)
      visit(val) //printing
      
      
    }
    
  }
 
//class Solution {
//    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
//
//    }
//}




let three1 = TreeNode(3)
let five1 = TreeNode(5)
let one1 = TreeNode(1)
let six1 = TreeNode(6)
let two1 = TreeNode(2)
let seven1 = TreeNode(7)
let four1 = TreeNode(4)
let nine1 = TreeNode(9)
let eight1 = TreeNode(8)

let three2 = TreeNode(3)
let five2 = TreeNode(5)
let one2 = TreeNode(1)
let six2 = TreeNode(6)
let two2 = TreeNode(2)
let seven2 = TreeNode(7)
let four2 = TreeNode(4)
let nine2 = TreeNode(9)
let eight2 = TreeNode(8)



three1.left = five1
three1.right = one1
five1.left = six1
five2.right = two1
one1.left = nine1
one1.right = eight1
two1.left = seven1
two1.right = four1


three2.left = five2
three2.right = one1
five2.left = six2
five2.right = seven2
one2.left = four2
one2.right = two2
two2.left = nine2
two2.right = eight2



three1.traversPostOrder{print($0)}




//let solution = Solution()


