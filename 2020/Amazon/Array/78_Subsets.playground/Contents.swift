/*
 Given an integer array nums, return all possible subsets (the power set).
 
 The solution set must not contain duplicate subsets.
 
 
 
 Example 1:
 
 Input: nums = [1,2,3]
 Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
 Example 2:
 
 Input: nums = [0]
 Output: [[],[0]]
 */


class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        result.append([])
        
        for num in nums {
            print(num)
            for val in result {
                print(result)
                
                var valToUpdate = val
                print("valToUpdate1",valToUpdate)
                valToUpdate.append(num)
                print("valToUpdate2",valToUpdate)
                result.append(valToUpdate)
                print("result",result)
                print("")
            }
            print("____")
        }
        return result
    }
}

let solution = Solution()

print(solution.subsets([1,2,3]))
