/*
 
 Given a binary tree, return all root-to-leaf paths.

 Note: A leaf is a node with no children.

 Example:

 Input:

    1
  /   \
 2     3
  \
   5

 Output: ["1->2->5", "1->3"]

 Explanation: All root-to-leaf paths are: 1->2->5, 1->3
 
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
    
    
    func treeTraverseInOrder(visit: (_ val:Int)->(Void)){
        visit(val)
        left?.treeTraverseInOrder(visit: visit)
        right?.treeTraverseInOrder(visit: visit)
    }
    
 }

class Solution {

   func binaryTreePaths(_ root: TreeNode?) -> [String] {
    var result = [String]()
    if root == nil{
        return result
    }
    
    searchBT(root, path: "", result: &result)
    return result
    
   }
    
    
    func searchBT(_ root: TreeNode?, path:String, result: inout [String]){
        if root?.left == nil && root?.right==nil{
            result.append(path+String(root!.val))
        }
        if root?.left != nil{
            searchBT(root?.left, path: path+String(root!.val)+"->", result: &result)
        }
        if root?.right != nil{
            searchBT(root?.right, path: path+String(root!.val)+"->", result: &result)
        }
    }
}


/*
   1
  /   \
 2     3
  \
   5
 
 */


let one = TreeNode(1)
let two = TreeNode(2)
let three = TreeNode(3)
let five = TreeNode(5)

one.left = two
one.right = three
two.right = five


//one.treeTraverseInOrder{
//    print($0)
//}

let solution = Solution()
print(solution.binaryTreePaths(one))
