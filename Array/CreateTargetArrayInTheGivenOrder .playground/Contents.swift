/*
 
 Example 1:

 Input: nums = [0,1,2,3,4], index = [0,1,2,2,1]
 Output: [0,4,1,3,2]
 Explanation:
 nums       index     target
 0            0        [0]
 1            1        [0,1]
 2            2        [0,1,2]
 3            2        [0,1,3,2]
 4            1        [0,4,1,3,2]
 Example 2:

 Input: nums = [1,2,3,4,0], index = [0,1,2,3,0]
 Output: [0,1,2,3,4]
 Explanation:
 nums       index     target
 1            0        [1]
 2            1        [1,2]
 3            2        [1,2,3]
 4            3        [1,2,3,4]
 0            0        [0,1,2,3,4]
 Example 3:

 Input: nums = [1], index = [0]
 Output: [1]
 
 */


class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
      var newArr = [Int]()
      
      var count = 0

      for i in nums{
        newArr.insert(i, at: index[count])
        count+=1
      }
      
      
      return newArr
    }
  

  
}



let solution = Solution()



print(solution.createTargetArray([1], [0]))
