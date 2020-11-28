/*
 Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right, which minimizes the sum of all numbers along its path.

 Note: You can only move either down or right at any point in time.

  

 Example 1:


 Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
 Output: 7
 Explanation: Because the path 1 → 3 → 1 → 1 → 1 minimizes the sum.
 Example 2:

 Input: grid = [[1,2,3],[4,5,6]]
 Output: 12
 */


class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        
        guard grid != nil else {
            return 0
        }
        
        let count = (grid.count)*(grid[0].count)
        print(count)
        var dp = Array(repeating: Array(repeating: 0, count: (grid[0].count)
), count: (grid.count))
        print(dp)
        for i in grid.indices{
            for j in grid[i].indices{

                dp[i][j] = grid[i][j]
                if i>0 && j>0{
                    dp[i][j] += min(dp[i-1][j], dp[i][j-1])
                }else if i > 0{
                    dp[i][j] += dp[i-1][j]
                }else if j > 0{
                    dp[i][j] += dp[i][j-1]
                }
            }

        }
        print(dp)

        return dp[grid.count-1][grid[0].count-1]
    }
}


let solution = Solution()

solution.minPathSum([[1,3,1],
                     [1,5,1],
                     [4,2,1]])
