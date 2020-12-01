/*
 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:

 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
  

 Example 1:


 Input: board =
 [["5","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: true
 Example 2:

 Input: board =
 [["8","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
 
 
 */
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var set = [String]()
        for i in 0..<board.count{
            for j in 0..<board.count{
            let char = board[i][j]
                if char != "."{
                    let row = "\(char) in row \(i)"
                    let col = "\(char) in col \(j)"
                    let box = "\(char) in box \((i/3)) - \((j/3))"
 
                    if set.contains(row){
                        return false
                    }else{
                        set.insert(row, at: 0)
                    }

                    if set.contains(col){
                        return false
                    }else{
                        set.insert(col, at: 0)
                    }
                    
                    if set.contains(box){
                        return false
                    }else{
                        set.insert(box, at: 0)
                    }
                }else{
                    continue
                }
        }
    }
        
        return true
  }
}


let solution = Solution()

solution.isValidSudoku( [["5","3",".",".","7",".",".",".","."]
                         ,["6",".",".","1","9","5",".",".","."]
                         ,[".","9","8",".",".",".",".","6","."]
                         ,["8",".",".",".","6",".",".",".","3"]
                         ,["4",".",".","8",".","3",".",".","1"]
                         ,["7",".",".",".","2",".",".",".","6"]
                         ,[".","6",".",".",".",".","2","8","."]
                         ,[".",".",".","4","1","9",".",".","5"]
                         ,[".",".",".",".","8",".",".","7","9"]])
