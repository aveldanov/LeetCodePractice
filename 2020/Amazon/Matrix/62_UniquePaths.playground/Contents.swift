/*
 A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

 The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

 How many possible unique paths are there?

  

 Example 1:


 Input: m = 3, n = 7
 Output: 28
 Example 2:

 Input: m = 3, n = 2
 Output: 3
 Explanation:
 From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
 1. Right -> Down -> Down
 2. Down -> Down -> Right
 3. Down -> Right -> Down
 Example 3:

 Input: m = 7, n = 3
 Output: 28
 Example 4:

 Input: m = 3, n = 3
 Output: 6
 */


class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var arr = [[Int]](repeating: [Int](repeating: 1, count: n), count: m)
        
        for i in 1..<arr.count{
            for j in 1..<arr[i].count{
    // DP solution: Previous row + Previous column is possible unique paths for [i][j] cell.
                print("i", i, "j", j)
                print("arr[i][j]",arr[i][j])
                print("arr[i-1][j]",arr[i-1][j])
                print("arr[i][j-1]",arr[i][j-1])
                print(arr)
                print("")

                arr[i][j] = arr[i-1][j] + arr[i][j-1]
               
            }
        }
        
      
        return arr[m-1][n-1]
        
    }
}

let solution = Solution()

solution.uniquePaths(3, 3)


// 3 7 = 28

// 2 3 = 3

// 3 3 = 6
