/*
 
 Given a m * n matrix grid which is sorted in non-increasing order both row-wise and column-wise.

 Return the number of negative numbers in grid.

  

 Example 1:

 Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
 Output: 8
 Explanation: There are 8 negatives number in the matrix.
 Example 2:

 Input: grid = [[3,2],[1,0]]
 Output: 0
 Example 3:

 Input: grid = [[1,-1],[-1,-1]]
 Output: 3
 Example 4:

 Input: grid = [[-1]]
 Output: 1
 
 */


class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var count = 0
        var j = 0
        var i = 0
        
        print(grid[0].count)
        
        while j < grid.count{
            print("j", j)
            print("i",i)
            
            if grid[j][i] < 0 {
               print(grid[j][i])
                count = count + grid[0].count - i
                j += 1
                i = 0
                print("count", count)
            }else if i < grid[0].count-1{
                print("i2",i)

                i += 1
            }else{
                j += 1
                i = 0
            }
            print("")
        }
        
        
        return count
    }
}


let solution = Solution()

print(solution.countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]))
