/*
 
 Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

 Notice that the solution set must not contain duplicate triplets.

  

 Example 1:

 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Example 2:

 Input: nums = []
 Output: []
 Example 3:

 Input: nums = [0]
 Output: []
 
 */


class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var newArr = [[Int]]()
        guard nums.count >= 3 else {
            return newArr
        }
        let sortedArr = nums.sorted()
        print(sortedArr)
        for i in 0..<sortedArr.count{
            
            if i != 0, sortedArr[i] == sortedArr[i-1]{
                continue
            }
            var left = i + 1
            var right = sortedArr.count - 1
            while left < right {
                let first = sortedArr[i]
                let second = sortedArr[left]
                let third = sortedArr[right]

                let sum = first + second + third
                
                if sum < 0{
                    left += 1
                    
                }else if sum>0{
                    right -= 1
                    
                }else{
                    if left-1 > i, sortedArr[left] == sortedArr[left-1]{
                        left += 1
                        
                    }else{
                        newArr.append([first,second,third])
                        left += 1
                        
                    }
                }
            }
        }
        return newArr
    }
}



let solution = Solution()

print(solution.threeSum([-1,0,1,2,-1,-4]))
