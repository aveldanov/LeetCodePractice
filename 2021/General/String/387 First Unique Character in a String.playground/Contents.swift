/*
 
 Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

 Examples:

 s = "leetcode"
 return 0.

 s = "loveleetcode"
 return 2.
 */


func firstUniqChar(_ s: String) -> Int{
    
    var dict : [Character:Int] = [:]
    for i in s{
//        if dict[i] == nil{
//            dict[i] = 1
//        }else{
//            dict[i]! += 1
//        }
//
        
        dict[i] = dict[i] == nil ? 1 : dict[i]!+1
    }
    print(dict)
    for (index,char) in s.enumerated(){
        print(index,char)
        if dict[char] == 1{
            return index
        }
        
    }
    
    return -1
}


firstUniqChar("loveleetcode")
