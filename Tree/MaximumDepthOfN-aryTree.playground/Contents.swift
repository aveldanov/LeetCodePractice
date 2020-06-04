
public class Node {
  public var val: Int
  public var children: [Node]
  public init(_ val: Int) {
    self.val = val
    self.children = []
  }
  
  func traversalPreOrder(_ visit:(Node)->Void){
    children.forEach{
      $0.traversalPreOrder(visit)
    }
    visit(self)
  }
}





/*
 
 Input: root = [1,null,3,2,4,null,5,6]
 Output: 3

 1
 / | \
 3  2  4
 /\
 5  6
 */

class Solution {
  func maxDepth(_ root: Node?) -> Int {
    var maxim = 0
    if root == nil{
      return 0
    }
    root?.children.forEach{
      maxim = max(maxim, maxDepth($0))
    }
    return 1 + max(0, maxim)
  }
  
}





//let one = Node(1)
//let five = Node(5)
//let three = Node(3)
//let four = Node(4)
//let six = Node(6)
//let two = Node(2)
//
//one.children.append(three)
//one.children.append(two)
//one.children.append(four)
//three.children.append(five)
//three.children.append(six)


//Input: root = [1,null,2,3,4,5,null,null,6,7,null,8,null,9,10,null,null,11,null,12,null,13,null,null,14]
//Output: 5

let one = Node(1)
let two = Node(2)
let three = Node(3)
let four = Node(4)
let five = Node(5)
let six = Node(6)
let seven = Node(7)
let eight = Node(8)
let nine = Node(9)
let ten = Node(10)
let eleven = Node(11)
let twelwe = Node(12)
let thirteen = Node(13)
let fourteen = Node(14)

one.children.append(two)
one.children.append(three)
one.children.append(four)
one.children.append(five)
three.children.append(six)
three.children.append(seven)
four.children.append(eight)
five.children.append(nine)
five.children.append(ten)
seven.children.append(eleven)
eight.children.append(twelwe)
nine.children.append(thirteen)
eleven.children.append(fourteen)


//one.traversalPreOrder {
//  print($0.val)
//}


let solution = Solution()

print(solution.maxDepth(one))


