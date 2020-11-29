/*
 Given a Binary Search Tree (BST) with the root node root, return the minimum difference between the values of any two different nodes in the tree.

 Example :

 Input: root = [4,2,6,1,3,null,null]
 Output: 1
 Explanation:
 Note that root is a TreeNode object, not an array.

 The given tree [4,2,6,1,3,null,null] is represented by the following diagram:

           4
         /   \
       2      6
      / \
     1   3

 while the minimum difference in this tree is 1, it occurs between node 1 and node 2, also between node 3 and node 2.
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



//class Solution {
//    func minDiffInBST(_ root: TreeNode?) -> Int {
//        if root == nil{
//            return 0
//        }
//        var current: TreeNode?
//        var stackTree = [TreeNode]()
//        var stackVal = [Int]()
//
//        stackTree.append(root!)
//
//        while !stackTree.isEmpty{
//            current = stackTree.removeFirst()
//            stackVal.append(current!.val)
//
//            if current?.left != nil{
//                stackTree.append(current!.left!)
//            }
//            if current?.right != nil{
//                stackTree.append(current!.right!)
//            }
//
//        }
//
//        var result: Int = Int.max
//        stackVal.sort()
//         for i in 0..<(stackVal.count - 1) {
//             if stackVal[i + 1] - stackVal[i] < result
//             {
//                result = stackVal[i + 1] - stackVal[i]
//             }
//         }
////        let result = zip(stackVal, stackVal.dropFirst()).map{abs($0.1-$0.0)}.min()!
//        return result
//    }
//
//
//}


class Solution {
    var result = Int.max
    var current:TreeNode?
    var last:Int? = nil
    func minDiffInBST(_ root: TreeNode?) -> Int {
        helper(root)
        return result
    }
    
    func helper(_ root: TreeNode?){
        guard let current = root else {
            return
        }
        
        helper(current.left)
        
        if last != nil{
            print("curr.val",current.val)
            print("last",last!)
            result = min(result, abs(current.val - last!))
            print("result",result)
            print("")
        }
        last = current.val
        helper(current.right)
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

print(solution.minDiffInBST(ten))
