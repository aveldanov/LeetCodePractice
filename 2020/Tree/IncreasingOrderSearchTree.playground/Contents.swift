
/*
 
 

 Given a binary search tree, rearrange the tree in in-order so that the leftmost node in the tree is now the root of the tree, and every node has no left child and only 1 right child.

 Example 1:
 Input: [5,3,6,2,4,null,8,1,null,null,null,7,9]

        5
       / \
     3    6
    / \    \
   2   4    8
  /        / \
 1        7   9

 Output: [1,null,2,null,3,null,4,null,5,null,6,null,7,null,8,null,9]

  1
   \
    2
     \
      3
       \
        4
         \
          5
           \
            6
             \
              7
               \
                8
                 \
                  9
 
 */



//  Definition for a binary tree node.
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
    
    
    func traversePreOrder(visit:(Int)->Void){
        visit(val)
        left?.traversePreOrder(visit: visit)
        right?.traversePreOrder(visit: visit)
    }
    
    
  }
 
class Solution {
    var prev: TreeNode?
    var dummy = TreeNode(0)
    init() {
        prev = dummy
    }
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        inOrder(root)
        
        print("BOOM")
        print(dummy.right?.val)
        return dummy.right
    }
    
    
    func inOrder(_ root: TreeNode?){
        
        if root == nil{
            return
        }
        inOrder(root?.left)
        print("PREV", prev?.val)
        print("PREV.RIGHT", prev?.right?.val)
        
        prev!.right = root // dummy.right = 1
        prev!.left = nil // dummy.left = 0
        print("PREV", prev?.val)
        print("PREV RIGHT", prev!.right?.val)
        
  
        prev = root! // dummy = 1

        inOrder(root?.right)
    }
}




/*
 Example 1:
 Input: [5,3,6,2,4,null,8,1,null,null,null,7,9]

        5
       / \
     3    6
    / \    \
   2   4    8
  /        / \
 1        7   9
 
 */


let one = TreeNode(1)
let two = TreeNode(2)
let three = TreeNode(3)
let four = TreeNode(4)
let five = TreeNode(5)
let six = TreeNode(6)
let seven = TreeNode(7)
let eight = TreeNode(8)
let nine = TreeNode(9)


five.left = three
five.right = six
three.left = two
three.right = four
two.left = one
six.right = eight
eight.left = seven
eight.right = nine




//five.traversePreOrder {
//    print($0)
//}


let solution = Solution()
let result = solution.increasingBST(five)
result?.traversePreOrder(visit: {
    print($0)
})
