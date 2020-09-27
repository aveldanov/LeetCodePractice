/*
 
 
 Example 1:

 Input: n = 234
 Output: 15
 Explanation:
 Product of digits = 2 * 3 * 4 = 24
 Sum of digits = 2 + 3 + 4 = 9
 Result = 24 - 9 = 15
 Example 2:

 Input: n = 4421
 Output: 21
 Explanation:
 Product of digits = 4 * 4 * 2 * 1 = 32
 Sum of digits = 4 + 4 + 2 + 1 = 11
 Result = 32 - 11 = 21
 
 */

import Foundation

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
      
//      let arr = String(n).compactMap{Int(String($0))}
        let arr = Array(n)
      return arr.reduce(1, *) - arr.reduce(0, +)
    }
}


let soltion = Solution()


print(soltion.subtractProductAndSum(234))
