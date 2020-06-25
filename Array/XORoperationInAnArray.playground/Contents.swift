/*
 Example 1:

 Input: n = 5, start = 0
 Output: 8
 Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
 Where "^" corresponds to bitwise XOR operator.
 Example 2:

 Input: n = 4, start = 3
 Output: 8
 Explanation: Array nums is equal to [3, 5, 7, 9] where (3 ^ 5 ^ 7 ^ 9) = 8.
 Example 3:

 Input: n = 1, start = 7
 Output: 7
 Example 4:

 Input: n = 10, start = 5
 Output: 2
 */


class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
      let arr = (0..<n).map { start + ($0 * 2) }
      // 0+0*2
      
      let test = (0...4).map{start + $0*2}
      print(test)
      print(arr)
      
      return arr.reduce(0, ^)
    }
}



let solution = Solution()

print(solution.xorOperation(5, 0))
