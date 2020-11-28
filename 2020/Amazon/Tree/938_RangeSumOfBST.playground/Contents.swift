/*
 
 Given the root node of a binary search tree, return the sum of values of all nodes with a value in the range [low, high].

  

 Example 1:


 Input: root = [10,5,15,3,7,null,18], low = 7, high = 15
 Output: 32
 Example 2:


 Input: root = [10,5,15,3,7,13,18,1,null,6], low = 6, high = 10
 Output: 23
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
//
//    class Solution {
//        var sum = 0
//        func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
//            if root == nil{
//                return 0
//            }
//
//            if root!.val >= L && root!.val <= R{
//                sum+=root!.val
//            }
//
//            rangeSumBST(root?.left, L, R)
//            rangeSumBST(root?.right, L, R)
//            return sum
//        }
//    }


class Solution {
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        var sum = 0
        if root == nil{
            return sum
        }
        var queue = [TreeNode]()
        queue.append(root!)
        
        print(queue.map{$0.val})
        while !queue.isEmpty {
            var current = queue.removeFirst()
            if current.val >= L && current.val <= R{
                sum+=current.val
            }
            if current.left != nil && current.val > L{
                queue.append(current.left!)
            }
            if current.left != nil && current.val < R{
                queue.append(current.right!)
            }


        }
        
        return sum
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


ten.left = five
ten.right = fithteen
five.left = three
five.right = seven
fithteen.right = eighting



let solution = Solution()

solution.rangeSumBST(ten, 7, 15)
