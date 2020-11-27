/*
 Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.
 
 Each number in candidates may only be used once in the combination.
 
 Note: The solution set must not contain duplicate combinations.
 
 
 
 Example 1:
 
 Input: candidates = [10,1,2,7,6,1,5], target = 8
 Output:
 [
 [1,1,6],
 [1,2,5],
 [1,7],
 [2,6]
 ]
 Example 2:
 
 Input: candidates = [2,5,2,1,2], target = 5
 Output:
 [
 [1,2,2],
 [5]
 ]
 */

//
//class Solution {
//    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
//        guard candidates.count > 0 else {
//            return []
//        }
//        var result = [[Int]]()
//
//        findCombination(candidates.sorted(), &result, [], target, 0)
//
//
//        return result
//    }
//
//
//
//    func findCombination(_ candidates: [Int],_ result: inout [[Int]],_ combination: [Int],_ target: Int,_ startIndex: Int){
//        if target == 0 {
//            result.append(combination)
//            return
//        }
//        print("stIndex", startIndex)
//        print("comb",combination)
//        print("res", result)
//        var combination = combination
//
//        //[1, 1, 2, 5, 6, 7, 10]
//        for i in startIndex..<candidates.count{
//            guard target >= candidates[i] else { return }
////            if i != startIndex, candidates[i] == candidates[i-1] { continue }
//         if i == startIndex || candidates[i] != candidates[i-1]{
//                print("c[i]",candidates[i])
//
//                combination.append(candidates[i])
//                print("")
//                findCombination(candidates, &result, combination, target - candidates[i], i + 1)
//            print("remlast",combination.removeLast())
//
//            }
//        }
//    }
//}



class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        guard candidates.count > 0 else {
            return []
        }
        var result = [[Int]]()

        findCombination(candidates.sorted(), &result, [], target, 0)


        return result
    }



    func findCombination(_ candidates: [Int],_ result: inout [[Int]],_ combination: [Int],_ target: Int,_ index: Int){
        if target == 0 {
            result.append(combination)
            return
        }
        
        if index == candidates.count{
            return
        }
        
        var index = index
        print("stIndex", index)
        print("c[i]",candidates[index])
        print("comb",combination)
        print("res", result)

        var combination = combination

        //[1, 1, 2, 5, 6, 7, 10]
        
        if candidates[index]<=target{
            print("ENTER")
            print("")

            combination.append(candidates[index])
            findCombination(candidates, &result, combination, target-candidates[index], index+1)
            print("OUT")
            print(combination.removeLast())
            print("")

            while index<candidates.count-1 && candidates[index] == candidates[index+1] {
                index+=1
            }
            findCombination(candidates, &result, combination, target, index+1)
        }
        
    
    }
}

let solution = Solution()

print(solution.combinationSum2([10,1,2,7,6,1,5], 8))
