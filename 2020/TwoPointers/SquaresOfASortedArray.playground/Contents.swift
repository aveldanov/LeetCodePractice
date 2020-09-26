/*
 
 Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.

  

 Example 1:

 Input: [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 Example 2:

 Input: [-7,-3,2,3,11]
 Output: [4,9,9,49,121]
  

 Note:

 1 <= A.length <= 10000
 -10000 <= A[i] <= 10000
 A is sorted in non-decreasing order.
 
 */


class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        if A.count == 1{
            return A.map{$0*$0}
        }
        var arr = [Int]()
        var i = 0
        var j = A.count - 1
        
        while i != j {
            if abs(A[i]) >= abs(A[j]){
                arr.insert(A[i]*A[i], at: 0)
                i += 1
            }else{
                arr.insert(A[j]*A[j], at: 0)
                j += -1
            }
        }
        arr.insert(A[i]*A[i], at: 0)

        return arr
    }
}




let solution = Solution()


print(solution.sortedSquares([-7,-3,2,3,11]))
