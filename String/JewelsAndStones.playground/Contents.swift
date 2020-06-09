



/*
 Example 1:

 Input: J = "aA", S = "aAAbbbb"
 Output: 3
 Example 2:

 Input: J = "z", S = "ZZ"
 Output: 0
 
 
 */



class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
      
      return J.reduce(0) {sum, j in sum + S.filter({$0 == j}).count}
}

}

let solution = Solution()


  print(solution.numJewelsInStones("aA", "aAAbbbb"))
