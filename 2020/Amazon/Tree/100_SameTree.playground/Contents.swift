/*
 Given two binary trees, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

 Example 1:

 Input:     1         1
           / \       / \
          2   3     2   3

         [1,2,3],   [1,2,3]

 Output: true
 Example 2:

 Input:     1         1
           /           \
          2             2

         [1,2],     [1,null,2]

 Output: false
 Example 3:

 Input:     1         1
           / \       / \
          2   1     1   2

         [1,2,1],   [1,1,2]

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
    
    func traversTreeInOrder(visit:(_ val: Int)->(Void)){
        visit(val)
        left?.traversTreeInOrder(visit: visit)
        right?.traversTreeInOrder(visit: visit)
    }
    
}

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil{
            return true
        }
        
        if p == nil || q == nil || p!.val != q!.val{
            return false
        }
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}


let one1 = TreeNode(1)
let three1 = TreeNode(3)
let two1 = TreeNode(2)
let five1 = TreeNode(5)

one1.left = three1
one1.right = two1
three1.left = five1


//let two2 = TreeNode(2)
//let one2 = TreeNode(1)
//let three2 = TreeNode(3)
//let four2 = TreeNode(4)
//let seven2 = TreeNode(7)


let one2 = TreeNode(1)
let three2 = TreeNode(2)
let two2 = TreeNode(2)
let five2 = TreeNode(5)




one2.left = three2
one2.right = two2
three2.left = five2






//two2.left = one2
//two2.right = three2
//one2.right = four2
//three2.right = seven2

let solution = Solution()


solution.isSameTree(one1, one2)
