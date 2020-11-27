func reverseInParentheses(inputString: String) -> String {
//    guard inputString.count >= 5 else{
//        return inputString
//    }
    
    
    
    var start = 0
    var end = 0
    var inputArr = Array(inputString)
     for i in 0..<inputString.count{
         if inputArr[i] == "("{
             start = i
         }
         if inputArr[i] == ")"{
             end = i
//            print(String(inputArr[0..<start]+inputArr[(start+1)...(end-1)].reversed() + inputArr[(end+1)...inputArr.count-1]))
            print(start)
            print(end)
            print(inputArr)
            print(inputArr[0..<start]+inputArr[(start+1)...(end-1)].reversed() + inputArr[end+1..<inputArr.count] )
            print(inputArr[..<start]+inputArr[(start+1)..<(end)].reversed() + inputArr[(end+1)...])
//            + inputArr[end...]
            
            return reverseInParentheses(inputString: String(inputArr[..<start]+inputArr[(start+1)..<(end)].reversed() + inputArr[(end+1)...] ))

         }

     }


return inputString
}



print(reverseInParentheses(inputString: "(bar)"))
