/*
 
 Write a program to find the node at which the intersection of two singly linked lists begins.
 
 For example, the following two linked lists:
 
 
 begin to intersect at node c1.
 
 
 
 Example 1:
 
 
 Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,6,1,8,4,5], skipA = 2, skipB = 3
 Output: Reference of the node with value = 8
 Input Explanation: The intersected node's value is 8 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [4,1,8,4,5]. From the head of B, it reads as [5,6,1,8,4,5]. There are 2 nodes before the intersected node in A; There are 3 nodes before the intersected node in B.
 
 
 Example 2:
 
 
 Input: intersectVal = 2, listA = [1,9,1,2,4], listB = [3,2,4], skipA = 3, skipB = 1
 Output: Reference of the node with value = 2
 Input Explanation: The intersected node's value is 2 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [1,9,1,2,4]. From the head of B, it reads as [3,2,4]. There are 3 nodes before the intersected node in A; There are 1 node before the intersected node in B.
 
 
 Example 3:
 
 
 Input: intersectVal = 0, listA = [2,6,4], listB = [1,5], skipA = 3, skipB = 2
 Output: null
 Input Explanation: From the head of A, it reads as [2,6,4]. From the head of B, it reads as [1,5]. Since the two lists do not intersect, intersectVal must be 0, while skipA and skipB can be arbitrary values.
 Explanation: The two lists do not intersect, so return null.
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
        
        while !stackTree.isEmpty {
            stackTree.removeFirst()
            
        }
        
        
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
