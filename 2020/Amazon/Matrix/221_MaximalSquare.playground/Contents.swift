/*
 Given an m x n binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.

  

 Example 1:


 Input: matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
 Output: 4
 Example 2:


 Input: matrix = [["0","1"],["1","0"]]
 Output: 1
 Example 3:

 Input: matrix = [["0"]]
 Output: 0

 */


class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        guard matrix.count > 0 && matrix[0].count > 0 else { return 0 }
        var square = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
        var curMaxLen = 0
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                // when first col or row, set value manually, avoid "-1" index as well
                if i == 0 || j == 0 {
                    square[i][j] = Int(String(matrix[i][j]))!
                }
                // if needed, accumulate max edge value, and store the value at bottom-right point from a 2*2 square for future calculation
                else if matrix[i][j] == "1" {
                    square[i][j] = min(min(square[i-1][j], square[i][j-1]), square[i-1][j-1]) + 1
                }
                curMaxLen = max(curMaxLen, square[i][j])
            }
        }
        return curMaxLen*curMaxLen
    }
    
}


let solution = Solution()

solution.maximalSquare([
                        ["1","0","1","0","0"],
                        ["1","0","1","1","1"],
                        ["1","1","1","1","1"],
                        ["1","0","0","1","0"]])
