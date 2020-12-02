/*
 You are given a perfect binary tree where all leaves are on the same level, and every parent has two children. The binary tree has the following definition:

 struct Node {
   int val;
   Node *left;
   Node *right;
   Node *next;
 }
 Populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to NULL.

 Initially, all next pointers are set to NULL.

  

 Follow up:

 You may only use constant extra space.
 Recursive approach is fine, you may assume implicit stack space does not count as extra space for this problem.
  

 Example 1:



 Input: root = [1,2,3,4,5,6,7]
 Output: [1,#,2,3,#,4,5,6,7,#]
 Explanation: Given the above perfect binary tree (Figure A), your function should populate each next pointer to point to its next right node, just like in Figure B. The serialized output is in level order as connected by the next pointers, with '#' signifying the end of each level.
 */




 public class Node {
      public var val: Int
      public var left: Node?
      public var right: Node?
        public var next: Node?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
          self.next = nil
      }
  }



class Solution {
    func connect(_ root: Node?) -> Node? {
        if root == nil{
            return nil
        }
        
        var current = root
        var stackTree = [Node?]()
        stackTree.append(root!)
        stackTree.append(nil)
        while !stackTree.isEmpty {
            let current = stackTree.removeFirst()
            if current == nil && stackTree.isEmpty{
                return root
            }else if current == nil{
                stackTree.append(nil)
                continue
            }else{
                current?.next = stackTree[0]
                if current?.left != nil{
                    stackTree.append(current?.left)
                }
                
                if current?.right != nil{
                    stackTree.append(current?.right)
                }
            }
            
        }
        return root
    }
    
    
    
}




/*
   10
   / \
   5   15
  / \    \
 3    7    18
    /
    4
 
 */

let ten = Node(10)
let five = Node(5)
let fithteen = Node(15)
let three = Node(3)
let eighting = Node(18)
let seven = Node(7)
let four = Node(4)


ten.left = five
ten.right = fithteen
five.left = three
five.right = seven
fithteen.right = eighting
seven.left = four


let solution = Solution()

//ten.traversTreeInOrder{
//    print($0)
//}


solution.connect(ten)
