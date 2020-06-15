/*
 
 
 Example 1:

 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 Example 2:

 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 Example 3:

 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 */



//class Solution {
//    func runningSum(_ nums: [Int]) -> [Int] {
//        var newArr = nums
//      var sum = 0
//      if nums == []{
//        return newArr;
//      }
//
//      return nums.map{(sum+=$0, sum).1} // 1,
//    }

//}
var sum = 0
var newAr = [Int]()
var arr = [1,2,3,4]
let runSum = arr.map{(sum+=$0, sum).1 }

//newAr.append(runSum)
print(runSum)


//class Solution {
//    func runningSum(_ nums: [Int]) -> [Int] {
//        var newArr = nums
//      var sum = 0
//      if nums == []{
//        return newArr;
//      }
//      print(newArr.map{ (sum) })
//      return [2]
//    }
//}


let solution = Solution()


print(solution.runningSum([1,2,3,4]))
