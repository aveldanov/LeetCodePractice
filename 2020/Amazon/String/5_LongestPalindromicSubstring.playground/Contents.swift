/*
 Given a string s, return the longest palindromic substring in s.

  

 Example 1:

 Input: s = "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.
 Example 2:

 Input: s = "cbbd"
 Output: "bb"
 Example 3:

 Input: s = "a"
 Output: "a"
 Example 4:

 Input: s = "ac"
 Output: "a"
 */


//class Solution {
//
//
//    func longestPalindrome(_ s: String) -> String {
//        if s.count<2{
//            return s
//        }
//        print(s.count)
//        var start = 0
//        var end = 0
//        var arrS = Array(s)
//        for i in 0..<s.count{
//
//            var currentChar = arrS[i]
//            print(currentChar)
//            var left = i
//            var right = i
//
//
//            while left >= 0 && currentChar == arrS[left] {
//                left-=1
//            }
//            while right < s.count && currentChar == arrS[right] {
//                right+=1
//            }
//
//            while left>=0 && right<s.count {
//                print(left,right)
//                if arrS[left] != arrS[right]{
//                    break
//                }
//                left-=1
//                right+=1
//            }
//
//            left = left + 1
//            right = right - 1
//            if (end - start < right - left) {
//                start = left;
//                end = right;
//            }
//
//        }
//
//
////        print(arrS[start...end].reduce(""){(a,b) in return a+b})
//
//        return arrS[start...end].map{String($0)}.joined()
//    }
//
//}



class Solution {
  

    func longestPalindrome(_ s: String) -> String {
       var maxString = ""
        
        if s == nil || s.count < 0{
            return ""
        }
        var start = 0
        var end = 0
        
        for i in 0..<s.count{
            
            let len1 = extend(s, left: i, right: i)
            let len2 = extend(s, left: i, right: i+1)
            
            
            let lenMax = max(len1, len2)
            if lenMax > end-start{
                start = i - (lenMax-1)/2
                end = i + lenMax/2
            }
        }

        return Array(s)[start...end].map{String($0)}.joined()
    }
    
    
    func extend(_ s: String, left:Int, right:Int)->Int{
        if s == nil || left > right{
            return 0
        }
        var left = left
        var right = right
        var sArr = Array(s)
        while left>=0 && right<s.count && sArr[left] == sArr[right] {
            print("bingo")
            print(left,right)

            left-=1
            right+=1
        }
        print("out",left,right)
        print("extend:",right-left+1 - 2)
        print("")
        return right-left+1 - 2
        
    }
    
}


let solution = Solution()


solution.longestPalindrome("cbbd")
