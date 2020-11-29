/*
 you have some sticks with positive length INT
 
 you can connect two sticks at length X and Y into one X+Y
 
 return min cost of connecting sticks
 
 
 
 */

func connectSticks(_ arr:[Int])->Int{
    var dp1 = [Int]()
    var dp2 = [Int]()
    dp1 = arr.sorted()

    var count = 0

    while !(dp1.count == 1 && dp2.count == 0 || dp1.count == 0 && dp2.count == 1){
        var c1 = 0
        var c2 = 0
        
        if dp1.count > 0 && dp2.count == 0 || dp1[0]<dp2[0]{
            c1 = dp1.removeFirst()
        }else{
            c1 = dp2.removeFirst()
            
        }
        
        
        if dp1.count > 0 && dp2.count == 0 || dp1[0]<dp2[0]{
            c2 = dp1.removeFirst()
        }else{
            c2 = dp2.removeFirst()
            
        }
        
        count += c1+c2
        dp2.append(c1+c2)
        
        
    }
    
    return count
    
    
    return count
}


connectSticks([2,4,3]) // 14
//connectSticks([1,8,3,5]) // 30


