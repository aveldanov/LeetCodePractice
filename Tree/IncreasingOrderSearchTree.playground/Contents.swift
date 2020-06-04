
 public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
      }
  
  
  func traversPreOrder(visit:(Int)->Void){
    
    
    visit(val)
    
    left?.traversPreOrder(visit: visit)
    right?.traversPreOrder(visit: visit)
    
    
    
    
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





class Solution {
  var prev: TreeNode

  var dummy = TreeNode(0)
  init(){
    prev = dummy
  }
   
  func increasingBST(_ root: TreeNode?) -> TreeNode? {
      inOrder(root)
    print("BOOM")
      return dummy.right
    }
  
  
  func inOrder(_ root: TreeNode?){
    if root == nil{
      return
    }
    print("")
    print("ROOOOT: ", root?.val)
    inOrder(root!.left);
    print("__root__: ",root?.val)
    print("prev before: ", prev.val)
    prev.right = root // dummy.right = root -> 3
    print("prev.right: ", prev.right?.val)
    prev = root! // prev = 5
    print("prev: ", prev.val)
    print("prev.left: ", prev.left?.val)
    prev.left = nil // prev.l
    
    inOrder(root!.right);
 
  }
}






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
five.right  = six
three.left = two
three.right = four
two.left = one
six.right = eight
eight.left = seven
eight.right = nine




//five.traversPreOrder {
//  print($0)
//}


let solution = Solution()

let result = solution.increasingBST(five)


result?.traversPreOrder(visit: {
  print($0)
})
