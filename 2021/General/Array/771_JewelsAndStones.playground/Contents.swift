/*
 You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.

 Letters are case sensitive, so "a" is considered a different type of stone from "A".

  

 Example 1:

 Input: jewels = "aA", stones = "aAAbbbb"
 Output: 3
 Example 2:

 Input: jewels = "z", stones = "ZZ"
 Output: 0
 */

//
//func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
//    var count = 0
//    for i in jewels{
//        for j in stones{
//            if i == j{
//                count+=1
//            }
//        }
//    }
//
//
//
//
//    return count
//}



//
//func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
//    var count = 0
//    for i in jewels{
//        
//        count += stones.filter{$0 == i}.count
//    }
//    
//    
//    print(stones.filter{$0 == "a"})
//    
//    return count
//}




func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var count = 0
    for i in jewels{
        
        count += stones.filter{$0 == i}.count
    }
    
    
    print(stones.filter{$0 == "a"})
    
    return count
}

numJewelsInStones("aA", "aAAbbbb")
