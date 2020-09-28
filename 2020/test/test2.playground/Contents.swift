func hashMap(queryType: [String], query:[[Int]])->Int64{
    
    
    var dict:[Int:Int] = [:]
    var newDict:[Int:Int] = [:]
    var result:Int64 = 200
    var index:Int = 0
    print(query)
    
    while index < queryType.count{
    
    if queryType[index] == "insert"{
        print("insert")
        dict[query[index][0]] = query[index][1]
        index += 1
    }
    
    
    if queryType[index] == "addValue"{
        print("addValue")
        for (key,value) in dict{
            print("adv", query[index][0])
//            newDict[key+query[index][0]] = value
            newDict[key] = value + query[index][0]
        }
        
        dict = newDict
        newDict = [:]

     print(dict)
        index+=1
    }
    
    if queryType[index] == "addKey"{
         print("addKey")
           for (key,value) in dict{
               print("adk", query[index][0])
               newDict[key+query[index][0]] = value
           }
           dict = newDict
        
        newDict = [:]
        print(dict)
        
        
        index += 1

    }
    
    
    if queryType[index] == "get"{
        print("get")

        print(dict)
        print(query[index][0])
        print(dict[query[index][0]])
        result = Int64(dict[query[index][0]]!)
        index += 1

    }
    
    
    }
    return result
}

//let query = [[1,2],[2,3],[2],[1],[3]]
let query = [[1,2], [2,3], [2], [1], [3]]
let queryType = ["insert","insert","addValue", "addKey", "get"]

let result = hashMap(queryType: queryType, query: query)
print(result)
