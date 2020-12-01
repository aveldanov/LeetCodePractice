/*
 Implement atoi which converts a string to an integer.

 The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

 The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

 If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

 If no valid conversion could be performed, a zero value is returned.

 Note:

 Only the space character ' ' is considered a whitespace character.
 Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, 231 − 1 or −231 is returned.
  

 Example 1:

 Input: str = "42"
 Output: 42
 Example 2:

 Input: str = "   -42"
 Output: -42
 Explanation: The first non-whitespace character is '-', which is the minus sign. Then take as many numerical digits as possible, which gets 42.
 Example 3:

 Input: str = "4193 with words"
 Output: 4193
 Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
 Example 4:

 Input: str = "words and 987"
 Output: 0
 Explanation: The first non-whitespace character is 'w', which is not a numerical digit or a +/- sign. Therefore no valid conversion could be performed.
 Example 5:

 Input: str = "-91283472332"
 Output: -2147483648
 Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer. Thefore INT_MIN (−231) is returned.
 */

class Solution {
    func myAtoi(_ s: String) -> Int {
        var pointer = 0
        var arr = [Character]()
        var sign = 1
        var result = 0
        var sArr = Array(s)
        while sArr[pointer] == " "  {
            pointer+=1
        }
        var noWhiteSpaceArr = sArr[pointer..<s.count]
        if noWhiteSpaceArr[pointer] == "-"{
            sign = -1
            noWhiteSpaceArr.removeFirst()

        }else if sArr[pointer] == "+"{
            noWhiteSpaceArr.removeFirst()
        }
        for char in noWhiteSpaceArr{
            if "0123456789".contains(char){
                arr.append(char)
            }else{
                break
            }
        }
        
        print(arr)
        
        guard var double = Double(String(arr)) else {
            return 0
        }
        print(Int(Int32.max))
        print(double)
        
//        result = double > Double(Int32.max) ? Int(Double(Int32.max)): Int(double)
        
        if double*Double(sign) > Double(Int32.max) {
             result = Int(Int32.max)
        } else if double*Double(sign) < Double(Int32.min) {
             result = Int(Int32.min)
         } else {
            result = Int(double*Double(sign))
         }
        print(result)
        return result
    }
}

let solution = Solution()

solution.myAtoi("-91283472332")
