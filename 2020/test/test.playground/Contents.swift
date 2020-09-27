//func concatenationsSum(a: [Int]) -> Int64 {
//    var sum = 0
//    for i in 0..<a.count{
//        for j in 0..<a.count{
//            sum = sum + Int(String(a[i])+String(a[j]))!
//        }
//    }
//    return Int64(sum)
// }
//
//
//
//let result = concatenationsSum(a: [11,22])
//
//print(result)






func concatenationsSum(a: [Int]) -> Int64 {
    var sum = 0
    
    
    sum = a.reduce(0) { $0 + $1 }
    

    return Int64(sum)
 }



let result = concatenationsSum(a: [1, 2, 3])

print(result)
























//
//
//func mergeStrings(s1: String, s2: String) -> String {
//      var newStr = ""
////    let s1Count = s1.count
////    let s2Count = s2.count
//
//    if s1.count <= 0{
//        return s2
//    }
//    else if s2.count <= 0{
//        return s1
//    }
//
//    var smallerString: String
//    var longerString: String
//
//
//    if s1.count>s2.count{
//        smallerString = s2
//        longerString = s1
//
//    }else{
//        smallerString = s1
//        longerString = s2
//
//    }
//
//
//
//    for i in 0..<smallerString.count{
//        let char1 = String(Array(s1)[i])
//        newStr.append(char1)
//        let char2 = String(Array(s2)[i])
//        newStr.append(char2)
//    }
//
//
//    for i in smallerString.count..<longerString.count{
//        let char = String(Array(longerString)[i])
//        newStr.append(char)
//
//
//    }
//
//
    
    
    
    
//
//    for i in 0...min(s1.count, s2.count)-1{
//        let char1 = s1[s1.index(s1.startIndex, offsetBy: i)]
//        let char2 = s2[s2.index(s2.startIndex, offsetBy: i)]
//
//        newStr.append(char1)
//        newStr.append(char2)
//
//
//    }
//    if s1.count > s2.count{
//
//        for i in s2.count..<s1.count{
//            let char1 = s1[s1.index(s1.startIndex, offsetBy: i)]
//
//            newStr.append(char1)
//
//        }
//
//    }else{
//        for i in s1.count..<s2.count{
//            let char2 = s2[s2.index(s2.startIndex, offsetBy: i)]
//            newStr.append(char2)
//
//        }
//
//    }


//
//    return newStr
//}
//
//let result = mergeStrings(s1: "abcd", s2: "efghi")
//
////let result = mergeStrings(s1: "dce", s2: "cccbd")
//
//print(result)


/*
 Input:
 s1: "dce"
 s2: "cccbd"
 Output:
 "dcccecbd"
 Expected Output:
 "dcecccbd"
 Console Output:
 Empty
 
 */




















//
//
//
//func alternatingSort(a: [Int]) -> Bool {
//     var newArr = [Int]()
//     var i = 0
//     var j = a.count - 1
//
//    while i != j{
//        print("a[i]",i, a[i])
//        print("a[j]",j, a[j])
//         if a[i]>a[j]{
//
//             return false
//         }else{
//            i+=1
//            j-=1
//        }
//
//     }
//
//     return true
//}
//
//
//let result = alternatingSort(a: [1, 4, 5, 6, 3]) // 1,3,4,6,5
//
//print(result)
//
//

































//func mutateTheArray(n: Int, a: [Int]) -> [Int] {
//    var newArr = [Int]()
//    var num = 0
//  for i in 0...a.count-1{ //0-4
////      print("i")
//      if i == a.count-1{
//          num = a[i-1]+a[i]
//      }else if i == 0{
//                num = a[i]+a[i+1]
//      }else{
//        num = a[i-1]+a[i]+a[i+1]
//
//      }
////    print(num)
//
//      newArr.append(num)
////      print(newArr)
//  }
//    return newArr
//}
//
//
//
//let result = mutateTheArray(n: 5, a: [-9, -6, 10, -6, -10])
//print(result)
