
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  
  public init(_ val: Int) {
    self.val = val
    
  }
  
  func taverse(visit:(Int)->Void){
    visit(val)
    left?.taverse(visit: visit)
    right?.taverse(visit: visit)
    
  }
}

class Solution {
  
  var sum = 0
  var level = 0
  var levelMax = 0
  func deepestLeavesSum(_ root: TreeNode?) -> Int {

  
    return helper(root, level: 0)
  }
  

  func helper(_ root: TreeNode?, level:Int)->Int{
    print("!!!!!!!!!!!!!!!!!!")
    if root == nil{
        return 0
      }
    print("level", level)
    print("NODE:",root!.val)
    
    if level > levelMax{
      print("BOOM1", root!.val)
      sum = root!.val // 7->2->9|
      levelMax = level
    }else if level == levelMax{
      print("BOOM2", root!.val)

      sum = sum + root!.val // 6->0
    }
    print("left")
    print("level", level)

    helper(root?.left, level: level + 1)
    print("right")
    print("level", level)

    helper(root?.right, level: level + 1)
    print("end")
    print("")

    return sum
  }
  
  
}



/*
 Input: root = [1,2,3,4,5,null,6,7,null,null,null,null,8]
 Output: 15
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
let one2 = TreeNode(1)
let seven2 = TreeNode(7)




//one.left = two
//one.right = three
//two.left = four
//two.right = five
//four.left = seven
//three.right = six
//six.right = eight


six.left = seven
six.right = eight

eight.left = one
eight.right = three

seven.left = two
seven.right = seven2
two.left = nine

seven2.left = one2
seven2.right = four


three.right = five




let solution = Solution()

print(solution.deepestLeavesSum(six))

//six.taverse {
//  print("NODE",$0)
//}
