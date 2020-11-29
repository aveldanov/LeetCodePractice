/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Output: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
 */



//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var result = [Int]()
//        for i in 0..<nums.count-1{
//            for j in 1..<nums.count {
//                print(nums[i],nums[j])
//                if (nums[j]+nums[i]) == target && (j != i){
//                    result.append(i)
//                    result.append(j)
//                    return result
//                }
//            }
//        }
//        return []
//    }
//}




//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var dict:[Int:Int] = [:]
//        var j = 0
//        while j < nums.count {
//            if dict[target-nums[j]] != nil{
//               return [dict[target-nums[j]]!,j] //
//            }else{
//                dict[nums[j]] = j
//            }
//            j+=1
//        }
//        return []
//    }
//}


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        
//        print(nums.enumerated())
        for (i, n) in nums.enumerated() {
            if dict[target - n] != nil{
                return [dict[target - n]! , i]
            }
            dict[n] = i
        }
        
        return []
    }
}

let solution = Solution()

solution.twoSum([3,2,3], 6)

//solution.twoSum([3,2,4], 6)
//solution.twoSum([2,5,5,11], 10) //[1,2]
