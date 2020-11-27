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
//        print("whgat",board[1][1])
        let j = 1
        let i = 1
        
//        var sum = 0
//        var minusThing = board[j][i]
 var board = board
        
        var newArr = board
//        print("sum YAY", helper(j: 0, i: 0, y: 0, x: 0, board: &board, sum: &sum) - minusThing)
//        let numberOfLiveCells = (helper(j: j, i: i, y: j, x: i, board: &board, sum: sum) - minusThing)
//        print("NumsOF ", numberOfLiveCells)

        
        for j in 0..<board.count{
            for i in 0..<board[0].count{
              var   sum = 0
                let minusThing = board[j][i]
                print("passed j",j,"    passed i",i)

                var numberOfLiveCells = (helper(j: j, i: i, y: j, x: i, board: &board, sum: sum) - minusThing)
                print("NumsOF CEELLLLLLLL", numberOfLiveCells)

                if numberOfLiveCells < 2 || numberOfLiveCells > 3{
                    newArr[j][i] = 0
                }else if numberOfLiveCells == 2 || numberOfLiveCells == 3{
                    continue
                }else if numberOfLiveCells > 3 && board[j][i] == 0{
                    newArr[j][i] = 1
                }
print("")
            }

        }
        
        
        
print("NEW",newArr)
   return newArr
    }
    var maxSum = 0

    
    func helper(j:Int, i:Int, y: Int, x: Int, board: inout [[Int]], sum: Int)->Int{
        var sum = sum
//        print(board)
//        print("passed sum", sum)
//        print("passed j",j,"    passed i",i)
        var result = 0
//        print(board.count - (board.count - j+1))
//        print(board[0].count - (board[0].count - i+1))
//        print(board.count - (board.count - j - 1))
//        print(board[0].count - (board[0].count - i - 1))
       
        
        if j<0 || i < 0 || j>=board.count || i>=board[0].count || j<y-1 || i < x-1 || j > y+1 || i > x+1 || ((board[j][i] == 0)  && (maxSum != 0)){
//            print("!!!j",j,"    !!!i",i)
//            print("Pass!!!!!!!!!!!")
            return 0
        }
//        print("j",j,"    i",i)
//        print("")

//        print("Boom", board[j][i])
//        print("summmm", sum)
        sum = sum + board[j][i]
        if maxSum<sum{
            maxSum = sum
        }
        
//        print("sumInner",maxSum)
//        print("")

        board[j][i] = 0

        helper(j: j-1, i: i-1, y:y, x:x, board: &board, sum: maxSum)
        helper(j: j-1, i: i, y:y, x:x,  board: &board, sum: maxSum)
        helper(j: j-1, i: i+1,  y:y, x:x, board: &board, sum: maxSum)
        helper(j: j, i: i-1, y:y, x:x, board: &board, sum: maxSum)
        helper(j: j, i: i+1,  y:y, x:x, board: &board, sum: maxSum)
        helper(j: j+1, i: i-1,  y:y, x:x, board: &board, sum: maxSum)
        helper(j: j+1, i: i,  y:y, x:x, board: &board, sum: maxSum)
        helper(j: j+1, i: i+1,  y:y, x:x, board: &board, sum: maxSum)
        print("maxSum", maxSum)
        return maxSum
            
            
        }
    
    
    
    
}



let solution = Solution()


print(solution.gameOfLife([
    [0,1,0],
    [0,0,1],
    [1,1,1],
    [0,0,0]
  ]))




/*
 
 class Solution {
     func gameOfLife(_ board: inout [[Int]]) {
         let neighbors = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
         let old = board
         for (i, row) in old.enumerated() {
             for (j, cell) in row.enumerated() {
                 let neighbors = neighbors.filter { old.get(i + $0.0)?.get(j + $0.1) == 1 }
                 switch neighbors.count {
                     case 3:                     fallthrough
                     case 2..<4 where cell == 1: board[i][j] = 1
                     default:                    board[i][j] = 0
                 }
             }
         }
     }
 }

 extension Array {
     func get(_ i: Int) -> Element? {
         return indices.contains(i) ? self[i] : nil
     }
 }
 
 */
