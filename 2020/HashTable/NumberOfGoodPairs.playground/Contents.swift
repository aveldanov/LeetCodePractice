/*
 
 Given an array of integers nums.

 A pair (i,j) is called good if nums[i] == nums[j] and i < j.

 Return the number of good pairs.

  

 Example 1:

 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
 Example 2:

 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 Example 3:

 Input: nums = [1,2,3]
 Output: 0
  
 
 
 */


//class Solution {
//    func numIdenticalPairs(_ nums: [Int]) -> Int {
//        var count = 0
//        for i in 0...nums.count-1{
//            for j in 0...i{
//                print(i, j)
//
//                if (nums[i] == nums [j]) && (i != j){
//                    count += 1
//                    print(nums[i],"and", nums[j])
//                    print("Boom")
//                }
//
//            }
//
//
//        }
//        return count
//    }
//}



class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {

        var count = 0
        var dict = [Int:Int]()
        
        for i in nums{
            dict[i, default:0] += 1
        }
        
        for j in dict.values{
         count += j * (j - 1) / 2
        }
        return count
    }
}





let solution = Solution()

print(solution.numIdenticalPairs([1,2,3,1,1,3]))
