/*
  Partition Labels
 A string S of lowercase English letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.

  

 Example 1:

 Input: S = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
  

 Note:

 S will have length in range [1, 500].
 S will consist of lowercase English letters ('a' to 'z') only.
 */


class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        var result: [Int] = [Int]()
        var start = 0
        var last = 0
        var charDict : [Character: Int] =  [Character: Int]()
        var arr: [Character] = Array(S)
        
        print(arr)
        for i in 0..<S.count{
            
           charDict[arr[i]] = i
        }
        
        print(charDict)
        
        for i in 0..<S.count{
            
            print("last", last)
            print("arr[i]",arr[i])
            print("charDict[arr[i]", charDict[arr[i], default: 0])
            
            last = max(last, charDict[arr[i], default:0])
            print(last)
            print("i",i)
            print("")
            
            if i == last{
                result.append(i - start + 1)
                start = i + 1
                
            }
            
        }
        
        
        return result
    }
}




let solution = Solution()

print(solution.partitionLabels("ababcbacadefegdehijhklij"))
