/*
 
 
 Example 1:

 Input: address = "1.1.1.1"
 Output: "1[.]1[.]1[.]1"
 Example 2:

 Input: address = "255.100.50.0"
 Output: "255[.]100[.]50[.]0"

 */



class Solution {
    func defangIPaddr(_ address: String) -> String {
//      var arr = [String]
//      arr = address.components(separatedBy: ".")
//      for "." in address{
//
//
//      }
      
      return address.split(separator: ".").joined(separator: "[.]")
      
      
//      replacingOccurrences(of: ".", with: ".]")
      
    }
}


let solution = Solution()

print(solution.defangIPaddr("1.1.1.1"))

