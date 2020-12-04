/*
 can s devided by t. It is dividable  if t can fit n times in s
 
 s = "bcdbcdbcdbcd"
 t = "bcdbcd"
 
 concatenated twice. Smallest sting can create both strings is BCD of length 3
 */


func divisibleString(_ s:String, _ t:String)->Int{
    var result = false
    var s = Array(s)
    var t = Array(t)
    
    if s.count%t.count != 0 {
        return -1
    }
    
    for i in 0..<s.count{
        
        if s[i] != t[i%t.count]{
            return -1
        }
    }
    
    return count(t)
}

func count (_ str:[Character])->Int{
//    var str = Array(str)
    if str[0..<str.count/2] == str[str.count/2..<str.count]{
        return count(Array(String(str[0..<str.count/2])))
    }else{
        return str.count
    }
    
    
}


divisibleString("bcdbcdbcdbcd", "bcdbcd")
