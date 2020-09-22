/*
 Given the root node of a binary search tree (BST) and a value. You need to find the node in the BST that the node's value equals the given value. Return the subtree rooted with that node. If such node doesn't exist, you should return NULL.

For example,

Given the tree:
        4
       / \
      2   7
     / \
    1   3

And the value to search: 2
You should return this subtree:

      2
     / \
    1   3

*/


public class TreeNode {
    public var value: Int
    public var left: TreeNode?
    public var right: TreeNode?
    init(_ value: Int){
        self.value = value
    }


  func traversPreOrder(visit:(Int)->Void){
    visit(value)
    left?.traversPreOrder(visit: visit)
    right?.traversPreOrder(visit: visit)
  }


}




class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root == nil{
            return nil
        }else if root?.value == val{
            return root
        }else if root!.value > val{
          return self.searchBST(root?.left, val)
          
        }else{
          return self.searchBST(root?.right, val)

        }
        
    }
}




/*
 Given the tree:
         4
        / \
       2   7
      / \
     1   3
 
 */


let four = TreeNode(4)
let two = TreeNode(2)
let one = TreeNode(1)
let three = TreeNode(3)
let seven = TreeNode(7)



four.left = two
four.right = seven
two.left = one
two.right = three




four.traversPreOrder {
    print($0)
}



let solution = Solution()


let result = solution.searchBST(four, 2)

result?.traversPreOrder(visit: {
    print($0)
})

