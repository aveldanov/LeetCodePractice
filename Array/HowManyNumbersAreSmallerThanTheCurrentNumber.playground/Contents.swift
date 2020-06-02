/*
 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 Example 2:

 Input: nums = [6,5,4,8]
 Output: [2,1,0,3]
 Example 3:

 Input: nums = [7,7,7,7]
 Output: [0,0,0,0]
 */







class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
      var newArr:[Int] = []
      if nums == [] {
        return newArr
      }
  
      for i in nums{
       var count = 0
        for j in nums{
          if i > j{
            count += 1
          }
       

        }
        newArr.append(count)

      }
      return newArr
      
      
    }
}


let solution = Solution()


solution.smallerNumbersThanCurrent([7,7,7,7])

