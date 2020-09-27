/*
 Given a string S of lowercase letters, a duplicate removal consists of choosing two adjacent and equal letters, and removing them.

 We repeatedly make duplicate removals on S until we no longer can.

 Return the final string after all such duplicate removals have been made.  It is guaranteed the answer is unique.

  

 Example 1:

 Input: "abbaca"
 Output: "ca"
 Explanation:
 For example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".

 
 */


//class Solution {
//    func removeDuplicates(_ S: String) -> String {
//        var arr = Array(S)
//        var j = 0
//        var res = ""
//        while j<arr.count-1{
//            print("j = ",j)
//            if arr[j]==arr[j+1]{
//                print(arr[j])
//                print(arr[j+1])
//                arr.remove(at: j)
//                arr.remove(at: j)
//                j = 0
//            }else{
//                j = j+1
//
//            }
//
//            print(String(arr))
//
//        }
//
//        return res
//    }
//}






class Solution{
func removeDuplicates(_ S: String) -> String {
    var result: String = ""
    
    for char in S {
        print("char", char)
        // res  = a
        // char b, b
        if result.isEmpty {
            result += String(char)
        }
        else if let peek = result.last {
            print("peek",peek) //peek = a
            if char == peek {
                result.removeLast()
            }
            else {
                result += String(char) //ab
            }
        }
        
    }
    
    return result
}

}

let solution = Solution()


print(solution.removeDuplicates("abbaca"))
