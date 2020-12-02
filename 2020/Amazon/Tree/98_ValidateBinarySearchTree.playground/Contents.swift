/*
 Given the root of a binary tree, determine if it is a valid binary search tree (BST).

 A valid BST is defined as follows:

 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.
  

 Example 1:


 Input: root = [2,1,3]
 Output: true
 Example 2:


 Input: root = [5,1,4,null,null,3,6]
 Output: false
 Explanation: The root node's value is 5 but its right child's value is 4.
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


/*
 
      5
    /   \
    4    6
         /\
         3  7
 
 */


class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {

        return helper(root, min: Int.min, max: Int.max)
    }
    
    func helper(_ root: TreeNode?, min:Int, max:Int)->Bool{
        if root == nil{
            return true
        }
        
        if root!.val > max || root!.val < min{
            return false
        }
        
        return helper(root?.left, min: min, max: root!.val) && helper(root?.right, min: root!.val, max: max)
        
    }
}




/*
   10
   / \
   5   15
  / \    \
 3    7    18
    /
    4
 
 */

let ten = TreeNode(10)
let five = TreeNode(5)
let fithteen = TreeNode(15)
let three = TreeNode(3)
let eighting = TreeNode(18)
let seven = TreeNode(7)
let four = TreeNode(4)


ten.left = five
ten.right = fithteen
five.left = three
five.right = seven
fithteen.right = eighting
seven.left = four


let solution = Solution()

//ten.traversTreeInOrder{
//    print($0)
//}


solution.isValidBST(ten)
