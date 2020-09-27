/*

 Balanced strings are those who have equal quantity of 'L' and 'R' characters.

 Given a balanced string s split it in the maximum amount of balanced strings.

 Return the maximum amount of splitted balanced strings.

  

 Example 1:

 Input: s = "RLRRLLRLRL"
 Output: 4
 Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
 Example 2:

 Input: s = "RLLLLRRRLR"
 Output: 3
 Explanation: s can be split into "RL", "LLLRRR", "LR", each substring contains same number of 'L' and 'R'.
 Example 3:

 Input: s = "LLLLRRRR"
 Output: 1
 Explanation: s can be split into "LLLLRRRR".
 Example 4:

 Input: s = "RLRRRLLRLL"
 Output: 2
 Explanation: s can be split into "RL", "RRRLLRLL", since each substring contains an equal number of 'L' and 'R'
 
 */


class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        if s.count == 0{
            return 0
        }
        var count = 0
        var r = 0
        var l = 0
        var arrayString = Array(s)
        
        for i in 0..<s.count{
            if arrayString[i] == "L"{
                
                l += 1
            }else {
                r += 1
            }
            
            if r == l{
                count += 1
            }
            
        }
        
        
        
        
        return count
    }
}



let solution = Solution()

print(solution.balancedStringSplit("RLRRLLRLRL"))
