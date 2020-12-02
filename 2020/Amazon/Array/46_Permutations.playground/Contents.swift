/*
 Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

  

 Example 1:

 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
 Example 2:

 Input: nums = [0,1]
 Output: [[0,1],[1,0]]
 Example 3:

 Input: nums = [1]
 Output: [[1]]
 */


class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var nums = nums
        var arr = [Int]()
        var result = [[Int]]()
        helper(&nums, arr: &arr, result: &result)
        return result
    }
    
    func helper(_ nums:inout [Int], arr: inout [Int], result:inout [[Int]]){
        print("START")

        if arr.count == nums.count{
            result.append(arr)
            print("YAHOO")
            return
        }
        print("result ",result)

        for i in 0..<nums.count{
            print("i1     ",i)
            print("nums[i]",nums[i])
            print("arr    ",arr)
            print("")
            
            
            if arr.contains(nums[i]){
                print("CONTINUE!")
                print("")
//                nums.remove(at: i)
                continue
                print("nums",nums)
            }
            
            arr.append(nums[i])
            helper(&nums, arr: &arr, result: &result)
            print("i2",i)
            print("arr",arr)
            print("arr.removeLast(): ",arr.removeLast())
            print("arr",arr)
            print("EXIT")

        }
        print("OUTOUTOUTUTPUTPUTPUTPUPTUPTUPUTPUT")
    }
}


let solution = Solution()

solution.permute([1,2,3])
