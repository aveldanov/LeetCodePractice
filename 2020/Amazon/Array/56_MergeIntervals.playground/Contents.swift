/*
 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

  

 Example 1:

 Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
 Example 2:

 Input: intervals = [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 */
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard !intervals.isEmpty else { return [] }


        var result = intervals.sorted{$0[0]<$1[0]}
        var arr = [Int]()
        var i = 0
        while i < result.count-1{

            print(result[i][1],result[i+1][0])
            if result[i][1] >= result[i+1][0]{

                let leftMin = min(result[i][0],result[i+1][0])
                let rightMax = max(result[i][1],result[i+1][1])

                arr = [leftMin,rightMax]
                print(arr)
                result.remove(at: i)
                result.remove(at: i)
                result.insert(arr, at: i)
//                print(result)
            }else{
                i+=1
            }
        }
        return result

    }
}




//class Solution {
//    func merge(_ intervals: [[Int]]) -> [[Int]] {
//        guard !intervals.isEmpty else { return [] }
//        var intervals = intervals.sorted(by: { $0[0] < $1[0] })
//        var index = 0
//        while index < (intervals.count - 1)  {
//            if intervals[index+1][0] <= intervals[index][1] {
//                let newInterval = [min(intervals[index][0],intervals[index+1][0]),max(intervals[index+1][1],intervals[index][1])]
//                print(newInterval)
//                intervals.remove(at: index + 1)
//                intervals.remove(at: index)
//                intervals.insert(newInterval, at: index)
//
//            } else {
//                index += 1
//            }
//        }
//
//        print(intervals)
//        return intervals
//    }
//}

let solution = Solution()

solution.merge([[1,4],[0,2],[3,5]]) // [[0,5]]

