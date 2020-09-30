/*
 Given a string S of '(' and ')' parentheses, we add the minimum number of parentheses ( '(' or ')', and in any positions ) so that the resulting parentheses string is valid.

 Formally, a parentheses string is valid if and only if:

 It is the empty string, or
 It can be written as AB (A concatenated with B), where A and B are valid strings, or
 It can be written as (A), where A is a valid string.
 Given a parentheses string, return the minimum number of parentheses we must add to make the resulting string valid.

  

 Example 1:

 Input: "())"
 Output: 1
 Example 2:

 Input: "((("
 Output: 3
 Example 3:

 Input: "()"
 Output: 0
 Example 4:

 Input: "()))((" -> ))(( (A)))((
 Output: 4
 */


class Solution {
    func minAddToMakeValid(_ S: String) -> Int {
        guard S.count>0 else {
            return 0
        }
        guard S.count>1 else {
            return 1
        }
        var result = 0
        var bal = 0
        
        for i in S{
            bal += i == "(" ? 1 : -1
            if bal == -1{
                result += 1
                bal += 1
            }
        }
        print(bal)
        return result + bal
    }
}


let solution = Solution()

print(solution.minAddToMakeValid("("))
