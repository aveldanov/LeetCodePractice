class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let pattern = "_<3$a7b567c$>_"

        let test = String(pattern.filter { !"[1,2,3,4,5,6,7,8,9 a-z]+".contains($0) })
    
        print(test)
        
        
        
    guard s.count > 0 else{
        return false
    }
    guard s.count > 1 else{
        return true
        
    }
        

        let inputString = Array(test)
    
    
    for i in 0..<inputString.count{
        print(i)
        if inputString[i] != inputString[inputString.count-i - 1]{
            return false
        }
        
    }
    return true
}
    }


let solution = Solution()


print(solution.isPalindrome("_<$abc$>_"))
