
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
 Input: [1,0,1,0,1,0,1]
 Output: 22
 Explanation: (100) + (101) + (110) + (111) = 4 + 5 + 6 + 7 = 22

 */



class Solution {
  func sumRootToLeaf(_ root:TreeNode) -> Int {
    return sumRootToLeafCalculate(root, current: 0)
  }
  func sumRootToLeafCalculate(_ root:TreeNode?, current:Int) -> Int {
    if root == nil {
          return 0
      }
    var current = current << 1
    current += root!.val
    if root!.left == nil && root!.right == nil{
      return current
    }
      return sumRootToLeafCalculate(root!.left, current: current)
          + sumRootToLeafCalculate(root!.right, current: current)
  }

}


let one = TreeNode(1)
let two = TreeNode(0)
let three = TreeNode(1)
let four = TreeNode(0)
let five = TreeNode(1)
let six = TreeNode(0)
let seven = TreeNode(1)


one.left = two
one.right = three

two.left = four
two.right = five

three.right = six
three.left = seven

//
//
//one.trePreOrderTraversal {
//  print($0)
//}

let solution = Solution()

print(solution.sumRootToLeaf(one))
//
//let b2 = "10010"
//print(Int(b2, radix: 2))
//
//


//extension Solution{
//
//  func toBinary(_ input:"String")->Int{
//
//    return Int(input, radix: 2)
//
//  }
//}
