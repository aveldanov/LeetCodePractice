/*
 Input: points = [[1,1],[3,4],[-1,0]]
 Output: 7
 Explanation: One optimal path is [1,1] -> [2,2] -> [3,3] -> [3,4] -> [2,3] -> [1,2] -> [0,1] -> [-1,0]
 Time from [1,1] to [3,4] = 3 seconds
 Time from [3,4] to [-1,0] = 4 seconds
 Total time = 7 seconds
 
 
 
 
 
 */



class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
      var num = 0
      var total = 0
      // [3,4] - [1,1] => 1[0]
      
      while num+1 < points.count {
//        print("num", num)
        total += max(abs(points[num+1][0]-points[num][0]),abs(points[num+1][1]-points[num][1]))
        
        // -2 - 3 = - 5
//        print(total)
        num+=1
        
      }
      
      
      
      return total
    }
}




let solution = Solution()


print(solution.minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]]
))


