func sockMerchant(n: Int, ar: [Int]) -> Int {
    guard n>0 else{
        return 0
    }
    guard n>1 else{
        return 0
    }

    var count = 0
    var dict = [Int:Int]()
    for i in 0..<ar.count{

        if dict[ar[i]] == nil{
            dict[ar[i]] = 1
        }else{
            dict[ar[i]]! += 1
        }




    }
    
    print(2%2)
    for (k,v) in dict{
//        print(v)
        if v%2 == 0{
            count += v/2
        }else{
            
            count+=(v-1)/2
        }
        
    }
    
//    print(count)
//    print(dict)

return count


}

sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
