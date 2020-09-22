
/*
 Given the root node of a binary search tree, return the sum of values of all nodes with value between L and R (inclusive).

 The binary search tree is guaranteed to have unique values.

  

 Example 1:

 Input: root = [10,5,15,3,7,null,18], L = 7, R = 15
 Output: 32
 Example 2:

 Input: root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
 Output: 23
 
 
 */


// Definition for a binary tree node.
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




//
//Example 1:
//
//Input: root = [10,5,15,3,7,null,18], L = 7, R = 15
// 10,15,7 = 32
//Output: 32
//Example 2:
//
//Input: root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
// 10,7,6 = 23
//Output: 23

/*
      10
    /   \
  5      15
  /\      /\
3   7       18

 10+5+7+15 =
 
*/




 
class Solution {
    var sum = 0
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        if root == nil{
            return sum
        }else if (root!.val >= L) && (root!.val <= R){
            sum += root!.val
        }
        root?.left?.val = rangeSumBST(root?.left, L, R)
        root?.right?.val = rangeSumBST(root?.right, L, R)
        return sum
    }
}

 
 
let ten = TreeNode(10)
let five = TreeNode(5)
let three = TreeNode(3)
let seven = TreeNode(7)
let fifteen = TreeNode(15)
let eighteen = TreeNode(18)
 
ten.left = five
five.left = three
five.right = seven
ten.right = fifteen
fifteen.right = eighteen

//ten.traversPreOrder {
//  print($0)
//}

let solution = Solution()

solution.rangeSumBST(ten, 7, 15)
