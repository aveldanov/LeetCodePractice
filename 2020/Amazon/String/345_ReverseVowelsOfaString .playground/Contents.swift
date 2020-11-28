/*
 Write a function that takes a string as input and reverse only the vowels of a string.

 Example 1:

 Input: "hello"
 Output: "holle"
 Example 2:

 Input: "leetcode"
 Output: "leotcede"
 */


//class Solution {
//    func reverseVowels(_ s: String) -> String {
//        var newStr = ""
//
//        var vowels = ["a","e","i","o","u","A","E","I","O","U"]
//        var strVow = String()
//        for char in s{
//            if vowels.contains(String(char)){
//                strVow.append(char)
//            }
//        }
//
//        for char in s{
//            if vowels.contains(String(char)){
//                newStr.append(strVow.removeLast())
//            }else{
//                newStr.append(char)
//            }
//        }
//
//        return newStr
//    }
//}

class Solution {
    func reverseVowels(_ s: String) -> String {
        
        let vowels = Set("aeiouAEIOU")
        var sArr = Array(s)
        var i = 0
        var j = s.count-1
        while i<j {
            if vowels.contains(sArr[i]) && vowels.contains(sArr[j])
              {
                sArr.swapAt(i, j)
                  i += 1
                  j -= 1
              }
              else if !vowels.contains(sArr[i]) {
                  i += 1
              }
                                       
              else if !vowels.contains(sArr[j]) {
                  j -= 1
              }
        }
        return String(sArr)
    }
}
let solution = Solution()

solution.reverseVowels("hello")
