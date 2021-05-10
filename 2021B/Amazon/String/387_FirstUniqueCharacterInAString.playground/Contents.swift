/*
 Given a string s, return the first non-repeating character in it and return its index. If it does not exist, return -1.

  

 Example 1:

 Input: s = "leetcode"
 Output: 0
 Example 2:

 Input: s = "loveleetcode"
 Output: 2
 Example 3:

 Input: s = "aabb"
 Output: -1
 */


func firstUniqChar(_ s: String) -> Int {
    
    
    var dict = [Character:Int]()
    
    for i in s{
        
        dict[i] = dict[i] == nil ? 1 : dict[i]!+1
    }
    print(s.enumerated())
    
    
    for (index,char) in s.enumerated(){

        if dict[char] == 1{
            return index
        }
        
        

    }
    
    return -1
}



firstUniqChar("loveleetcode")
