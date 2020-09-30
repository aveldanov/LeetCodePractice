/*
 54. Spiral Matrix

 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.

 Example 1:

 Input:
 [
  [ 1, 2, 3 ],
  [ 4, 5, 6 ],
  [ 7, 8, 9 ]
 ]
 Output: [1,2,3,6,9,8,7,4,5]
 Example 2:

 Input:
 [
   [1, 2, 3, 4],
   [5, 6, 7, 8],
   [9,10,11,12]
 ]
 Output: [1,2,3,4,8,12,11,10,9,5,6,7]
 */


class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count>0 else {
            return []
        }
        
        
        
        var startRow = 0
        var startCol = 0
        var endRow = matrix.count - 1
        var endCol = matrix[0].count - 1
        var result = [Int]()
        var counter = 1

        
        
        
        while startRow<=endRow , startCol<=endCol{
            
            for i in stride(from: startCol, through: endCol, by: 1){
                print("1",matrix[startRow][i])
                result.append(matrix[startRow][i] )
            }
            startRow+=1

            for i in stride(from: startRow, through: endRow, by: 1){
                     print("2", matrix[i][endCol])
                result.append( matrix[i][endCol])
            }
            endCol -= 1
            
            
            if startRow<=endRow{
                for i in stride(from: endCol, through: startCol, by: -1){
                      print("3",matrix[endRow][i])
                    result.append( matrix[endRow][i])
                }
                endRow -= 1
            }

            if startCol<=endCol{
                for i in stride(from: endRow, through: startRow, by: -1){
                    print("4", matrix[i][startCol])
                    result.append( matrix[i][startCol])

                }
                startCol += 1
            }

        }
        return result
    }
}



let solution = Solution()


print(solution.spiralOrder( [[1,2,3,4],
                             [5,6,7,8],
                             [9,10,11,12]]
))
