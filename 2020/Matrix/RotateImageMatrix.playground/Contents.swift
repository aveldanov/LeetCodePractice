/*
 You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

  

 Example 1:


 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[7,4,1],[8,5,2],[9,6,3]]
 Example 2:


 Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
 Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
 Example 3:

 Input: matrix = [[1]]
 Output: [[1]]
 Example 4:

 Input: matrix = [[1,2],[3,4]]
 Output: [[3,1],[4,2]]
 */


//class Solution {
//    func rotate(_ matrix:  [[Int]])->[[Int]] {
//
//         guard let firstRow = matrix.first else {
//            return [[]]
//        }
//
//
//        let edgeLength = firstRow.count
//        var newMatrix = matrix
//        for row in 0..<edgeLength {
//            for col in 0..<edgeLength {
//                let n = matrix[row][col]
//                print("n",n)
//                print("col", col)
//                print("row", row)
//                print("edgeLength - row - 1", edgeLength - row - 1)
//                newMatrix[col][edgeLength - row - 1] = n
//                print("newM", newMatrix)
//            }
//        }
//        return newMatrix
//    }
//}




class Solution {
    func rotate(_ matrix:  [[Int]])->[[Int]] {
        
         guard let firstRow = matrix.first else {
            return [[]]
        }
        
        var newMatrix = matrix
        // Step 1: Flip vertically
        newMatrix.reverse()
print(newMatrix)
        // Step 2: Flip diagonally
        for i in 0..<matrix.count {
            for j in 0..<i {
//                let temp = newMatrix[i][j]
//                newMatrix[i][j] = newMatrix[j][i]
//                newMatrix[j][i] = temp
                
                (newMatrix[i][j],newMatrix[j][i])=(newMatrix[j][i],newMatrix[i][j])
            }
        }
        return newMatrix
    }
}

let solution = Solution()

print(solution.rotate([[1,2,3],[4,5,6],[7,8,9]]))
