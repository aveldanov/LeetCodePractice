/*
 
["1100",
 "1100",
 "0010",
 "0001"]
 
 Here are 3 groups
 
 ["110", "110","001"] 2 groups
 
 ["10000", "01000", "00100", "00010", "000001"]
 
 */



func matrix(_ string: [String])->Int{
    var matrix = [[Int]]()
    var count = 0
    for item in string{
        var arr = [Int]()
        for each in item{
            arr.append(Int(String(each))!)
        }
        matrix.append(arr)
    }
    
    
    for i in 0..<matrix.count{
        for j in 0..<matrix[0].count{
            
            if i == j{
                count += helper(&matrix, i: i, j: j)
            }
            
        }
    }
    
    print(matrix)
    return count
}

func helper(_ matrix: inout [[Int]], i:Int, j:Int)->Int{
    if i<0 || i>=matrix.count || j<0 || j>=matrix[0].count || matrix[i][j] == 0{
        return 0
    }
    
    matrix[i][j] = 0
    
    helper(&matrix, i: i+1, j: j)
    helper(&matrix, i: i-1, j: j)
    helper(&matrix, i: i, j: j+1)
    helper(&matrix, i: i, j: j-1)

    return 1
}



matrix( ["10000", "01000", "00100", "00010", "00001"] )
