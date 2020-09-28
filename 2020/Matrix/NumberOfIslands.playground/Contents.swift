/*
 Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

  

 Example 1:

 Input: grid = [
   ["1","1","1","1","0"],
   ["1","1","0","1","0"],
   ["1","1","0","0","0"],
   ["0","0","0","0","0"]
 ]
 Output: 1
 Example 2:

 Input: grid = [
   ["1","1","0","0","0"],
   ["1","1","0","0","0"],
   ["0","0","1","0","0"],
   ["0","0","0","1","1"]
 ]
 Output: 3
 */


class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        guard grid != nil && grid.count > 0 else {
            return 0
        }

        var islandsCount = 0
        var grid = grid

        for i in 0..<grid.count{
            for j in 0..<grid[0].count{
                if grid[i][j] == "1"{
                    islandsCount += search(&grid, i, j)
                }

            }
        }

        return islandsCount
    }



    private func search(_ grid: inout [[Character]],_  row: Int, _ col: Int)->Int{
        guard row>=0 && row<grid.count && col>=0 && col<grid[0].count  else {
            return 0
        }
        guard grid[row][col] == "1" else {
            return 0
        }
            grid[row][col] = "0"
            search(&grid, row+1, col)
            search(&grid, row-1, col)
            search(&grid, row, col+1)
            search(&grid, row, col-1)
        return 1
    }
}

let solution = Solution()

print(solution.numIslands([["1","1","0","0","0"],["1","1","0","0","0"],["0","0","1","0","0"],["0","0","0","1","1"]]))


//class Solution {
//    func numIslands(_ grid: [[Character]]) -> Int {
//        guard grid != nil && grid.count > 0 else { return 0 }
//        var grid = grid
//        var m = grid.count
//        var n = grid[0].count
//        var count = 0
//
//        for i in 0..<m {
//            for j in 0..<n {
//                if grid[i][j] == "1" {
//                    count += 1
//                    dfs(&grid, i, j)
//                }
//            }
//        }
//        return count
//    }
//
//    private func dfs(_ grid: inout [[Character]], _ row: Int, _ col: Int) {
//        guard row < grid.count && row >= 0 && col < grid[0].count && col >= 0 else { return }
//        guard grid[row][col] == "1" else { return }
//        grid[row][col] = "0"
//
//        dfs(&grid, row+1, col)
//        dfs(&grid, row-1, col)
//        dfs(&grid, row, col+1)
//        dfs(&grid, row, col-1)
//    }
//}











//let solution = Solution()
//
//print(solution.numIslands([["1","1","0","0","0"],["1","1","0","0","0"],["0","0","1","0","0"],["0","0","0","1","1"]]))
