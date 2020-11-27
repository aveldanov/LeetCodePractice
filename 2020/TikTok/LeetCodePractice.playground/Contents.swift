class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var newA = A
        print(newA)

        
     let reversed = newA.map{Array($0.reversed())}
        
//        print(reversed.map{$0.map{$0 == 1 ? 0 : ($0 != 0) || $0 == 0 ? 1 : $0}})
        
        return reversed.map{$0.map{$0 == 1 ? 0 : ($0 != 0) || $0 == 0 ? 1 : $0}}
    }
}


let solution = Solution()


print(solution.flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]))
