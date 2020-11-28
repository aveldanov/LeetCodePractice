/*
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

  

 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count>0 else {
            return ""
        }
        guard strs.count>1 else {
            return strs[0]
        }
        
        let strs = strs.sorted()
        var result = ""
        print(zip(strs.first!, strs.last!))
        
        
        for (char1, char2) in zip(strs.first!, strs.last!){
            print(char1)
            print(char2)
            
            if char1 == char2{
                result.append(char1)
            }else{
                break
            }
        }
        
        return result
    }
}



let solution = Solution()

solution.longestCommonPrefix(["flower","flow","flight"])
