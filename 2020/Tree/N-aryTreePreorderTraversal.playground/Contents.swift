/* Given an n-ary tree, return the preorder traversal of its nodes' values.

Nary-Tree input serialization is represented in their level order traversal, each group of children is separated by the null value (See examples).

 

Follow up:

Recursive solution is trivial, could you do it iteratively?

 

Example 1:



Input: root = [1,null,3,2,4,null,5,6]
Output: [1,3,5,6,2,4]
Example 2:



Input: root = [1,null,2,3,4,5,null,null,6,7,null,8,null,9,10,null,null,11,null,12,null,13,null,null,14]
Output: [1,2,3,6,7,11,14,4,8,12,5,9,13,10]

*/

/*
     1
  /  | \
 3    2   4
/\
5 6
*/


//  Definition for a Node.
  public class Node {
      public var val: Int
      public var children: [Node]
      public init(_ val: Int) {
          self.val = val
          self.children = []
      }
    func traversalPreOrder(visit:(Node)->Void){
        children.forEach{
            $0.traversalPreOrder(visit: visit)
        }
        visit(self)
    }
  }
 

class Solution {
    var arr = [Int]()
    func preorder(_ root: Node?) -> [Int] {
        if root == nil{
            return []
        }else {
            arr.append(root!.val)
            root?.children.forEach{
                preorder($0)
            }
        }
        return arr
    }
}




let one = Node(1)
let five = Node(5)
let three = Node(3)
let four = Node(4)
let six = Node(6)
let two = Node(2)

one.children.append(three)
one.children.append(two)
one.children.append(four)
three.children.append(five)
three.children.append(six)


one.traversalPreOrder {
  print($0.val)
}


let solution = Solution()

let result = solution.preorder(one)

print(result)
