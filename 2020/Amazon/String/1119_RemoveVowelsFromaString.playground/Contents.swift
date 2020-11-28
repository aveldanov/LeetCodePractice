/*
 
 remove aieou
 
 "leetcodeiscommunityforcoders"
 
 
 */


func removeVovels(S:String)->String{
    let arr = ["a","e", "i", "o", "u"]
    var result = String()
    for char in S{
        if !arr.contains(String(char)){
            result.append(char)
        }
    }
    return result
}


print(removeVovels(S: "leetcodeiscommunityforcoders"))
