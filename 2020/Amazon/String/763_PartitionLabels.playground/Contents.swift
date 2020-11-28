/*
 A string S of lowercase English letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.

  

 Example 1:

 Input: S = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
  
 */

class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        // use dict to bond each character with last occurred index
        var dict = [Character:Int]()
        var result = [Int]()
        var arr = Array(S)
//        print(arr.indices)
        // store each character's last occurred index
        for i in arr.indices {
            
            dict[arr[i]] = i
        }
        print(dict)
        var startIdx = 0, endIdx = 0
        for index in arr.indices {
            // dict[arr[index]] stands for last occurred index of this character
//            print("dict[arr[index]]!", dict[arr[index]]!)
            endIdx = max(endIdx, dict[arr[index]]!)
            print(endIdx)
            // 0-a-8 1-b-5 2-a-8 3-b-5 4-c-7 5-b-5 6-a-8 7-c-7 8-a-8
            // when found lastIdx of all previous occurred characters
            if endIdx == index {
                result.append(endIdx-startIdx+1)//8-0+1 = 9
                startIdx = endIdx+1
            }
//            print(startIdx)
        }
        return result
    }
}
let soluiton = Solution()
print(soluiton.partitionLabels("ababcbacadefegdehijhklij"))
