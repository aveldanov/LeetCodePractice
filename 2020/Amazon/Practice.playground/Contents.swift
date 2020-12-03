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
    let neighbors = [(0, -1),(0, 1),(1, 0),
                     (-1, 0), (1, 1),  (1, -1), (-1, 1),(-1, -1)]

    func gameOfLife(_ board: inout [[Int]]) -> [[Int]]{
        if board.count == 0{
            return [[]]
        }

//        print(countLives(board, i: 0, j: 1))
//        print(board.count)
        for i in 0..<board.count{
            for j in 0..<board[0].count{
                if board[i][j] == 1{
                    let lives = countLives(board,i: i,j: j)
                    print("good",lives)
                    if lives<2 || lives>3{
                        board[i][j] = 66666
                    }
                }
 
                if board[i][j] == 0{
                    let lives = countLives(board,i: i,j: j)
//                    print("bad",lives)
                    if lives == 3{
                        board[i][j] = 99999
                    }
                }

//                print(board)
            }

        }
        
        // update the board
        for i in 0..<board.count{
            for j in 0..<board[0].count{
                if board[i][j] == 66666{
                    board[i][j] = 0
                }else if board[i][j] == 99999{
                    board[i][j] = 1
                }
            }
        }
        
        return board
    }
    
    
    func countLives(_ board:  [[Int]], i:Int,j:Int)->Int{
        var result = 0
        
        for dir in neighbors{
//            print(dir)
            let I = i + dir.0
            let J = j + dir.1
//            print(I,J)
            
            if I >= 0 && I<board.count && J>=0 && J<board[0].count && (board[I][J] == 1 || board[I][J] == 66666){
//                print(I,J)

                result+=1
            }
            
        }
        
        return result
    }
    
}



let solution = Solution()

var arr = [
    [0,1,0],
    [0,0,1],
    [1,1,1],
    [0,0,0]
  ]
print(solution.gameOfLife(&arr))

