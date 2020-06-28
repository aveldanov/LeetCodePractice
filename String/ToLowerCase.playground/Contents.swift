/*
 
 Input: "Hello"
 Output: "hello"
 Example 2:

 Input: "here"
 Output: "here"
 Example 3:

 Input: "LOVELY"
 Output: "lovely"
 Accepted
 
 
 
 */



class Solution {
    func toLowerCase(_ str: String) -> String {
        
      let arr = Array(str)
      
      let upprange = 65...90
      //65-90
      //97-100
      
//      print(arr.map{upprange.contains(Int($0.unicodeScalars.first!.value)) ? helperToChar(Int($0.unicodeScalars.first!.value)+32) : helperToChar(Int($0.unicodeScalars.first!.value))
//        }.joined(separator: ""))

      
      return arr.map{upprange.contains(Int($0.unicodeScalars.first!.value)) ? helperToChar(Int($0.unicodeScalars.first!.value)+32) : helperToChar(Int($0.unicodeScalars.first!.value))
      }.joined(separator: "")
    }
  func helperToChar(_ charCode:Int)->String{
    
    
    return String(UnicodeScalar(UInt8(charCode)))
  }
  

}


let solution = Solution()


print(solution.toLowerCase("here"))
