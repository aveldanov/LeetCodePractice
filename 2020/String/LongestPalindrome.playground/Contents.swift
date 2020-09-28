/*
 
 Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.

 Letters are case sensitive, for example, "Aa" is not considered a palindrome here.

  

 Example 1:

 Input: s = "abccccdd"
 Output: 7
 Explanation:
 One longest palindrome that can be built is "dccaccd", whose length is 7.
 Example 2:

 Input: s = "a"
 Output: 1
 Example 3:

 Input: s = "bb"
 Output: 2
 
 */



//class Solution {
//    func longestPalindrome(_ s: String) -> Int {
//        guard s.count >= 0 else {
//            return 0
//        }
//        var dict = [Character:Int]()
//        var arr = Array(s)
//        var count = 0
//        var singles = 0
//        for i in arr{
//            if dict[i] == nil{
//                dict[i] = 1
//            }else{
//                dict[i]! += 1
//            }
//
//
//        }
//        print(dict)
//        for char in dict.keys{
//            if dict[char]!%2 == 0{
//                print("1", char)
//                count = count + dict[char]!
//            }else if dict[char]!%2 != 0 && dict[char]! > 2{
//                print("2", char)
//
//                count = count + dict[char]!
//                if singles != 0{
//                    count -= 1
//                }
//                singles += 1
//
//            }else if singles == 0 {
//                print("3", char)
//
//                count = count + dict[char]!
//                singles += 1
//            }else{
//                print("4", char)
//
////                count -= 1
//            }
//
//
//        }
//
//        return count
//    }
//}



class Solution {
    func longestPalindrome(_ s: String) -> Int {
        guard s.count >= 0 else {
            return 0
        }
        
        guard s.count > 1 else {
            return 1
        }
        
        let dict: [Character:Int] = s.reduce(into: [:], {$0[$1, default: 0] += 1})
        print(dict)
        var count = 0
        
        for (_, value) in dict{
            if value%2 == 0{
                count+=value
            }else{
                count+=(value-1)
            }
            
        }
        

        
        
        
        
        return count < s.count ? count + 1 : count
    }
}


let solution = Solution()


print(solution.longestPalindrome("abccccdd"))
