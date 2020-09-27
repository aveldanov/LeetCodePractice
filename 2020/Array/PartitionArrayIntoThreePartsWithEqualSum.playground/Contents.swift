/*
 
 1013. Partition Array Into Three Parts With Equal Sum
 Easy

 490

 69

 Add to List

 Share
 Given an array A of integers, return true if and only if we can partition the array into three non-empty parts with equal sums.

 Formally, we can partition the array if we can find indexes i+1 < j with (A[0] + A[1] + ... + A[i] == A[i+1] + A[i+2] + ... + A[j-1] == A[j] + A[j-1] + ... + A[A.length - 1])

  

 Example 1:

 Input: A = [0,2,1,-6,6,-7,9,1,2,0,1]
 Output: true
 Explanation: 0 + 2 + 1 = -6 + 6 - 7 + 9 + 1 = 2 + 0 + 1
 Example 2:

 Input: A = [0,2,1,-6,6,7,9,-1,2,0,1]
 Output: false
 Example 3:

 Input: A = [3,3,6,5,-2,2,5,1,-9,4]
 Output: true
 Explanation: 3 + 3 = 6 = 5 - 2 + 2 + 5 + 1 - 9 + 4
 */


class Solution {
    func canThreePartsEqualSum(_ A: [Int]) -> Bool {
        guard A.count >= 0 else {
            return false
        }
        var sum = 0
        for i in 0..<A.count{
            sum = sum + A[i]
        }
        let target = sum/3
        var count = 0
        var result = 0
        for i in 0..<A.count{
            result = result + A[i]
            if result == target{
                result = 0
                count += 1
            }
        }
        return count >= 3 && result == 0
    }
}


let solution = Solution()

print(solution.canThreePartsEqualSum([10,-10,10,-10,10,-10,10,-10]))
