/*
 Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

 The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the frequency of at least one of the chosen numbers is different.

 It is guaranteed that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

  

 Example 1:

 Input: candidates = [2,3,6,7], target = 7
 Output: [[2,2,3],[7]]
 Explanation:
 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
 7 is a candidate, and 7 = 7.
 These are the only two combinations.
 Example 2:

 Input: candidates = [2,3,5], target = 8
 Output: [[2,2,2,2],[2,3,3],[3,5]]
 Example 3:

 Input: candidates = [2], target = 1
 Output: []
 Example 4:

 Input: candidates = [1], target = 1
 Output: [[1]]
 Example 5:

 Input: candidates = [1], target = 2
 Output: [[1,1]]
 
 */

// can use the same Num more than 1 time

class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var arr:[Int] = []
        var result:[[Int]] = []
        helper(candidates, index:0, target: target, current: 0, arr: &arr, result: &result)
        return result
    }
    
    func helper(_ nums: [Int], index:Int, target: Int, current: Int, arr: inout [Int], result: inout [[Int]]){
        print(current,target)
        if target == current {
            result.append(arr)
            return
        }else if current > target{
            return
        }
//        print("result",result)
        for i in index..<nums.count{
            print(nums[i])
            arr.append(nums[i])
            helper(nums, index:i, target: target, current: current + nums[i], arr: &arr, result: &result)
            arr.removeLast()
        }
    }
}


let solution = Solution()


solution.combinationSum([10,1,2,7,6,1,5], 8)
