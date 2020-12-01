/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
 Example 4:

 Input: s = "([)]"
 Output: false
 Example 5:

 Input: s = "{[]}"
 Output: true
 */


class Solution {
    func isValid(_ s: String) -> Bool {
        var sArr = Array(s)
        var stack = [String]()
        
        for item in sArr{
            print(stack)
            if item == "("{
                stack.append(")")
            }else if item == "{"{
                stack.append("}")
            }else if item == "["{
                stack.append("]")
            }else if stack.isEmpty || Character(stack.removeLast()) != item{
                return false
            }
            
        }
        
        return stack.isEmpty
    }
}

let solution = Solution()

solution.isValid("{[]}")
