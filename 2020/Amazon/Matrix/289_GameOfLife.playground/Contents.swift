/*
 According to the Wikipedia's article: "The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970."

 Given a board with m by n cells, each cell has an initial state live (1) or dead (0). Each cell interacts with its eight neighbors (horizontal, vertical, diagonal) using the following four rules (taken from the above Wikipedia article):

 Any live cell with fewer than two live neighbors dies, as if caused by under-population.
 Any live cell with two or three live neighbors lives on to the next generation.
 Any live cell with more than three live neighbors dies, as if by over-population..
 Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
 Write a function to compute the next state (after one update) of the board given its current state. The next state is created by applying the above rules simultaneously to every cell in the current state, where births and deaths occur simultaneously.

 Example:

 Input:
 [
   [0,1,0],
   [0,0,1],
   [1,1,1],
   [0,0,0]
 ]
 Output:
 [
   [0,0,0],
   [1,0,1],
   [0,1,1],
   [0,1,0]
 ]
 Follow up:

 Could you solve it in-place? Remember that the board needs to be updated at the same time: You cannot update some cells first and then use their updated values to update other cells.
 In this question, we represent the board using a 2D array. In principle, the board is infinite, which would cause problems when the active area encroaches the border of the array. How would you address these problems?
 */


class Solution {
    func gameOfLife(_ board:  [[Int]]) -> [[Int]]{
        let column = board.count
        let row = board[0].count
        var board = board
        for i in 0..<column{
            for j in 0..<row {
                if board[i][j] == 1{
                    print("good",board)
                    var neighbors = 0
                    neighbors += checkCell(&board, i: i-1, j: j-1)
                    neighbors += checkCell(&board, i: i-1, j: j)
                    neighbors += checkCell(&board, i: i-1, j: j+1)
                    neighbors += checkCell(&board, i: i, j: j-1)
                    neighbors += checkCell(&board, i: i, j: j+1)
                    neighbors += checkCell(&board, i: i+1, j: j-1)
                    neighbors += checkCell(&board, i: i+1, j: j)
                    neighbors += checkCell(&board, i: i+1, j: j+1)

                    if neighbors < 2 || neighbors > 3{
                        board[i][j]  = 666666 //dies
                    }
                    print("good",neighbors)
                    print("")
                }else{
                    var neighbors = 0
                    print("bad",board)

                    neighbors += checkCell(&board, i: i-1, j: j-1)
                    neighbors += checkCell(&board, i: i-1, j: j)
                    neighbors += checkCell(&board, i: i-1, j: j+1)
                    neighbors += checkCell(&board, i: i, j: j-1)
                    neighbors += checkCell(&board, i: i, j: j+1)
                    neighbors += checkCell(&board, i: i+1, j: j-1)
                    neighbors += checkCell(&board, i: i+1, j: j)
                    neighbors += checkCell(&board, i: i+1, j: j+1)
                    
                    if neighbors == 3{
                        board[i][j]  = 999999
                    }
                    print("bad",neighbors)
                    print("")
                }
            }
        }
        
        
        print(board)
        for i in 0..<column{
            for j in 0..<row{
                if board[i][j] == 666666{
                    board[i][j] = 0
                }else if board[i][j] == 999999{
                    board[i][j] = 1
                }
            }
        }
        return board
    }
    
    func checkCell(_ board: inout [[Int]], i:Int, j:Int) -> Int{
        if i < 0 || i >= board.count || j < 0 || j >= board[0].count {
            return 0
        }
        if board[i][j] == 0 || board[i][j] == 999999{// will live but still dead
            return 0
        }
        return 1
    }

    
    
}



let solution = Solution()

print(solution.gameOfLife([
    [0,1,0],
    [0,0,1],
    [1,1,1],
    [0,0,0]
  ]))

