/*
 Given the root of a binary tree, return its maximum depth.

 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 Example 1:


 Input: root = [3,9,20,null,null,15,7]
 Output: 3
 Example 2:

 Input: root = [1,null,2]
 Output: 2
 Example 3:

 Input: root = []
 Output: 0
 Example 4:

 Input: root = [0]
 Output: 1
 
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
    func maxDepth(_ root: TreeNode?) -> Int{
        if root == nil{
            return 0
        }
        var stackTree = [TreeNode]()
        var stackCount = [Int]()
        
        stackTree.append(root!)
        stackCount.append(1)
        var maxCount = 0
        var count = 0
        var current: TreeNode?
        
        while !stackTree.isEmpty {
            current = stackTree.removeFirst()
            count = stackCount.removeFirst()
            maxCount = max(count, maxCount)
            if current?.left != nil{
                stackTree.append((current?.left)!)
                stackCount.append(count+1)
            }
            if current?.right != nil{
                stackTree.append((current?.right)!)
                stackCount.append(count+1)
            }
        }
        return maxCount
    }
}




/*
 10
 / \
 5   15
 / \    \
 3    7    18
 
 
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

solution.maxDepth(ten)

