func matrix(_ realted:[String])->Int{
    
    var matrix = [[Int]]()
    
    var count = 0
    var users = 0
    
    for item in realted{
        
//        print(item)
        var arr : [Int] = []
        for each in item{
            
//            print(each)
            arr.append(Int(String(each))!)
        }
        matrix.append(arr)
    }
    
    for i in 0..<matrix.count{
        for j in 0..<matrix[0].count{
            
            
            
        }
    }
    
//    if users != 0 {
//        count = count - 1
//    }
    
    print(count, users)
    return count
}
matrix(["1100","1110","0110","0001"])


//matrix(["10000","01000","00100","00010","00001"])
//matrix(["110","010","001"])
