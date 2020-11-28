/*
 You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.
 
 You may assume that you have an infinite number of each kind of coin.
 
 
 
 Example 1:
 
 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1
 Example 2:
 
 Input: coins = [2], amount = 3
 Output: -1
 Example 3:
 
 Input: coins = [1], amount = 0
 Output: 0
 Example 4:
 
 Input: coins = [1], amount = 1
 Output: 1
 Example 5:
 
 Input: coins = [1], amount = 2
 Output: 2
 */


//class Solution {
//
//    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
//        guard amount > 0 else { return 0 }
//        var arr:[Int] = Array(repeating: amount+1, count: amount+1)
//        arr[0] = 0
//        print(arr)
//
//        for i in 1...amount{
//            for j in 0..<coins.count{
//                if coins[j] <= i{ // 1 <= 12  12, 1+ arr[1 - 1]
//
//                    // 2
//                    print(coins[j])
//                   arr[i] = min(arr[i], 1+arr[i - coins[j]])//0-1 = 0
//                    print(arr)
//
//
//                }
//
//            }
//
//        }
//
//        return arr[amount] > amount ? -1 : arr[amount]
//    }
//
//
//
//}


//class Solution {
//
//    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
//        var dp = Array(repeating: 0, count: amount + 1)
//        return dfs(coins, amount, &dp)
//    }
//
//    func dfs(_ coins: [Int], _ amount: Int, _ dp: inout [Int]) -> Int {
//        if amount < 0 { return -1 }
//        if amount == 0 { return 0 }
//        if dp[amount] != 0 { return dp[amount] } // check the memo
//
//        var currMin = Int.max
//        for coin in coins {
//            let prevMin = dfs(coins, amount - coin, &dp)
//            if 0 <= prevMin && prevMin < currMin {
//                currMin = prevMin + 1
//            }
//        }
//
//        // store new minimum to the memo
//        dp[amount] = currMin == Int.max ? -1 : currMin
//        return dp[amount]
//    }
//
//
//}


class Solution {

    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp:[Int] = Array(repeating: 0, count: amount+1)
        print(dp)
        return helper(coins, amount, &dp)
    }
    
    func helper(_ coins: [Int], _ remainder: Int, _ dp:inout[Int]) -> Int{
        if remainder<0{
            return -1
        }
        if remainder == 0{
            return 0
        }
        if dp[remainder] != 0{
            return dp[remainder]
        }
        var min = Int.max
        for coin in coins{
            let result = helper(coins, remainder-coin, &dp)
            if result >= 0 && result < min{
                min = result+1
            }
            
        }
        
        dp[remainder] = Int.max == min ? -1 : min
        print(dp)
        return dp[remainder]
    }


}



let solution = Solution()

solution.coinChange([1,2,5], 11)
