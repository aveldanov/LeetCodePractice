
  public class Node {
      public var val: Int
      public var children: [Node]
      public init(_ val: Int) {
          self.val = val
          self.children = []
      }
    

    
  }
 


//Input: root = [1,null,3,2,4,null,5,6]
//Output: [1,3,5,6,2,4]

/*
     1
  /  | \
3    2   4
/\
5 6
*/



class Solution {
  var arr = [Int]()
    func preorder(_ root: Node?) -> [Int] {
      if root == nil{
        return arr
      }else if root != nil{
        arr.append(root!.val)

        root?.children.forEach{
         var root = preorder($0)
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

//
//one.traversalPreOrder {
//  print($0.val)
//}


let solution = Solution()

solution.preorder(one)

print(solution.arr)
