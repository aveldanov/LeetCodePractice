
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    
  }
  
  
  func trePreOrderTraversal(visit:(Int)->Void ){
    
    visit(val)
    left?.trePreOrderTraversal(visit: visit)
    right?.trePreOrderTraversal(visit: visit)
  }
}


/*
 
       6
      / \
    7     8
   / \     /\
  2  7    1  3
 /   /\      \
 9   1 4     5
 
 Input: root = [6,7,8,2,7,1,3,9,null,1,4,null,null,null,5]
 Output: 18
 Explanation: The red nodes are the nodes with even-value grandparent while the blue nodes are the even-value grandparents.
 
 
 */

class Solution {
  var sum = 0
  
  func sumEvenGrandparent(_ root: TreeNode?) -> Int {
    if root == nil{
      return 0
    }
    
    if root!.val % 2 == 0{
      if ((root?.left) != nil){
        if ((root?.left?.left) != nil) {
          
          sum += (root?.left?.left!.val)!
          
        }
        if ((root?.left?.right) != nil){
          
          sum += (root?.left?.right!.val)!
        }
        
        
      }
      if ((root?.right) != nil){
        if ((root?.right?.left) != nil){
          sum += (root?.right?.left!.val)!
        }
        
        if ((root?.right?.right) != nil){
          sum += (root?.right?.right!.val)!

          
        }
        
      }
      
      
      
    }
    
  
    
    
    sumEvenGrandparent(root?.left)
    sumEvenGrandparent(root?.right)
    return sum
  }
}


let six = TreeNode(6)
let seven = TreeNode(7)
let eight = TreeNode(8)
let two = TreeNode(2)
let seven2 = TreeNode(7)
let one = TreeNode(1)
let three = TreeNode(3)
let nine = TreeNode(9)
let one2 = TreeNode(1)
let four = TreeNode(4)

let five = TreeNode(5)

six.left = seven
six.right = eight
seven.left = two
seven.right = seven2
eight.left = one
eight.right = three
two.left = nine
seven2.left = one2
seven2.right = four
three.right = five




let solution = Solution()

//six.trePreOrderTraversal {
//  print($0)
//}


print(solution.sumEvenGrandparent(six))

