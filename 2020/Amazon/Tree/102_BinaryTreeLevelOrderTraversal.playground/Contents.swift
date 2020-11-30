/*
 Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

 For example:
 Given binary tree [3,9,20,null,null,15,7],
     3
    / \
   9  20
     /  \
    15   7
 return its level order traversal as:
 [
   [3],
   [9,20],
   [15,7]
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
    
    func traversTreeInOrder(visit:(_ val: Int)->(Void)){
        visit(val)
        left?.traversTreeInOrder(visit: visit)
        right?.traversTreeInOrder(visit: visit)
    }
    
}



class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
   
        var stackTree = [TreeNode]()
        var result = [[Int]]()
        var currentLevel = [Int]()

        if root == nil{
            return result
        }
        stackTree.append(root!)
        while !stackTree.isEmpty {
           let count = stackTree.count
            for i in 0..<count{
                let current = stackTree.removeFirst()
                currentLevel.append(current.val)
                if current.left != nil{
                    stackTree.append(current.left!)
                }
                if current.right != nil{
                    stackTree.append(current.right!)
                }
            }
            result.append(currentLevel)
            currentLevel = []
        }
        return result
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

solution.levelOrder(ten)
