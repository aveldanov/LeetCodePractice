/*
 Write a function that reverses a string. The input string is given as an array of characters char[].

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

 You may assume all the characters consist of printable ascii characters.

  

 Example 1:

 Input: ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 Example 2:

 Input: ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]

 */


class Solution {
    func reverseString(_ s: inout [Character]) {
     
        
        for i in 0..<s.count/2{
            
            (s[i], s[s.count-1 - i]) = ( s[s.count-1 - i], s[i])
        }
    }
}


let solution = Solution()

print(solution.reverseString(["h","e","l","l","o"]))
