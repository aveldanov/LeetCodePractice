
/*
 Examples:

 Input : [ [1, 2], [3, 4] ]
 Output : 1 3
          1 4
          2 3
          2 4

 Input : [ [1], [2, 3, 4], [5] ]
 Output : 1 2 5
          1 3 5
          1 4 5
 */


// Append all elements of a2 to each element of a1
private func combihelper(a1 : [[Int]], a2 : [Int]) -> [[Int]] {
    var result = [[Int]]()
    for elem1 in a1 {
        for elem2 in a2 {
            result.append(elem1 + [elem2])
        }
    }
    return result
}

private func combinations(array : [[Int]]) -> [[Int]] {
    var result1 : [[Int]] = [[]]
    for row in array {
        result1 = combihelper(a1: result1, a2: row)
    }
    return result1
}


let myArray = [[1],
    [2,3,4],
    [5, 6],
]
let result = combinations(array: myArray)
print(result)
