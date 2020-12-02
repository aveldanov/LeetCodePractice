/*
 Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

 Example:

 Given the sorted array: [-10,-3,0,5,9],

 One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

       0
      / \
    -3   9
    /   /
  -10  5

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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.count < 0{
            return nil
        }
        
        
        return helper(nums, left: 0, right: nums.count-1)
    }
    
    func helper(_ nums:[Int], left: Int, right: Int)->TreeNode?{
//        var current = TreeNode()
        print(left,right)
        if left > right{
            return nil
        }
        let mid = (right-left)/2+left
        print("mid_id", mid)
        print("mid",nums[mid])
        let current = TreeNode(nums[mid])
        current.left = helper(nums, left: left, right: mid-1)
        current.right = helper(nums, left: mid+1, right: right)
        return current
    }
}

let solution = Solution()



print(solution.sortedArrayToBST([-10,-3,0,5,9]))
