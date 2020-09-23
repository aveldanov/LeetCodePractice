/*
 
 You are given the root of a binary tree where each node has a value 0 or 1.  Each root-to-leaf path represents a binary number starting with the most significant bit.  For example, if the path is 0 -> 1 -> 1 -> 0 -> 1, then this could represent 01101 in binary, which is 13.

 For all leaves in the tree, consider the numbers represented by the path from the root to that leaf.

 Return the sum of these numbers. The answer is guaranteed to fit in a 32-bits integer.

  

 Example 1:


 Input: root = [1,0,1,0,1,0,1]
 Output: 22
 Explanation: (100) + (101) + (110) + (111) = 4 + 5 + 6 + 7 = 22
 Example 2:

 Input: root = [0]
 Output: 0
 Example 3:

 Input: root = [1]
 Output: 1
 Example 4:

 Input: root = [1,1]
 Output: 3
 
 
 
 
 
 */


//  Definition for a binary tree node.
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
    
    
    func traversalPreOrder(visit:(Int)->Void){
        visit(val)
        
        left?.traversalPreOrder(visit: visit)
        right?.traversalPreOrder(visit: visit)
    }
    
    
  }
 
class Solution {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
       return bineryToDecCalculate(root, sum: 0)
    }
    
    func bineryToDecCalculate(_ root: TreeNode?, sum: Int) -> Int{
        if root == nil{
            return 0
        }
        let sum = sum*2 + root!.val
        if root!.left == nil && root!.right == nil{
          return sum
        }
        return bineryToDecCalculate(root!.left, sum: sum) + bineryToDecCalculate(root!.right, sum: sum)
    }
}



let one = TreeNode(1)
let two = TreeNode(1)
//let three = TreeNode(0)
//let four = TreeNode(1)
//let five = TreeNode(1)
//let six = TreeNode(0)
//let seven = TreeNode(1)


one.left = two
//two.left = three
//two.right = four
//one.right = five
//five.left = six
//five.right = seven



//one.traversalPreOrder(visit: {
//    print($0)
//})


let solution = Solution()

let result = solution.sumRootToLeaf(one)



print(result)
