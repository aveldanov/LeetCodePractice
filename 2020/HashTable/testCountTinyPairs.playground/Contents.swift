/*
 
 Count all distinct pairs with difference equal to k
 Last Updated: 23-09-2020
 Given an integer array and a positive integer k, count all distinct pairs with difference equal to k.
 Examples:

 Input: arr[] = {1, 5, 3, 4, 2}, k = 3
 Output: 2
 There are 2 pairs with difference 3, the pairs are {1, 4} and {5, 2}

 Input: arr[] = {8, 12, 16, 4, 0, 20}, k = 4
 Output: 5
 There are 5 pairs with difference 4, the pairs are {0, 4}, {4, 8},
 {8, 12}, {12, 16} and {16, 20}
 */


func countTinyPairs(a:[Int], b:[Int], k:Int)->Int{
    guard  a.count > 0 else {
        return 0
    }
    
    var j = b.count-1
    var count = 0
    for i in a{
        let pair = Int(String(i) + String(b[j]))!
        print(pair)
        if pair < k{
          count += 1
        }
        j-=1
    }
    return count
}


print(countTinyPairs(a: [16,1,4,2,14], b: [7,11,2,0,15], k: 743))
