/*
 Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

 Example:

 Input: s = 7, nums = [2,3,1,2,4,3]
 Output: 2
 Explanation: the subarray [4,3] has the minimal length under the problem constraint.
 Follow up:
 If you have figured out the O(n) solution, try coding another solution of which the time complexity is O(n log n).
 
 */




class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        guard nums.count >= 0 else {
            return 0
        }
        
        var minSize = Int.max
        var currentSum = 0
        var left = 0
        
        for i in 0..<nums.count{
            currentSum += nums[i]
            while currentSum >= s && left <= i {
                minSize = min(minSize, i-left+1)
                currentSum -= nums[left]
                left+=1
            }
        }
        return minSize == Int.max ? 0 : minSize
    }
}


let solution = Solution()

print(solution.minSubArrayLen(11, [1,2,3,4,5]))
