/*
 
 Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.

 You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.

 Example 1:

 Input:
     Tree 1                     Tree 2
           1                         2
          / \                       / \
         3   2                     1   3
        /                           \   \
       5                             4   7
 Output:
 Merged tree:
          3
         / \
        4   5
       / \   \
      5   4   7
  
 
 */





//  Definition for a binary tree node.
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      init(_ val: Int){
          self.val = val
      }


    func traversPreOrder(visit:(Int)->Void){
      visit(val)
      left?.traversPreOrder(visit: visit)
      right?.traversPreOrder(visit: visit)
    }


}
 
class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        
        var newNode: TreeNode?
        
        if t1 == nil && t2 == nil{
            return newNode
        }else if t1 != nil && t2 != nil{
            newNode = TreeNode(t1!.val + t2!.val)
            
            
        }else{
            
            newNode = t1 == nil ? t2 : t1
            
        }
        
        newNode?.left = mergeTrees(t1?.left, t2?.left)
        newNode?.right = mergeTrees(t1?.right, t2?.right)
        
        return newNode
    }
}

/*

Example 1:

Input:
    Tree 1                     Tree 2
          1                         2
         / \                       / \
        3   2                     1   3
       /                           \   \
      5                             4   7
Output:
Merged tree:
         3
        / \
       4   5
      / \   \
     5   4   7
 

*/


let one1 = TreeNode(1)
let three1 = TreeNode(3)
let two1 = TreeNode(2)
let five1 = TreeNode(5)

let two2 = TreeNode(2)
let one2 = TreeNode(1)
let three2 = TreeNode(3)
let four2 = TreeNode(4)
let seven2 = TreeNode(7)

one1.left = three1
one1.right = two1
three1.left = five1

two2.left = one2
two2.right = three2
one2.right = four2
three2.right = seven2


one1.traversPreOrder{
    print($0)
}
print("HELLO")
two2.traversPreOrder{
    print($0)
}


let solution = Solution()

let result = solution.mergeTrees(one1, two2)

result?.traversPreOrder{
    print($0)
}







