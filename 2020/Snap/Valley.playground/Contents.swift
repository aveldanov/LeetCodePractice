func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    
    guard steps>1 else {
        return 0
    }
    var pathArr = Array(path)
    var result = 0
    var bal = 0
    var below = Bool()
    if pathArr[0] == "U"{
         below = false
    }else{
         below = true
    }
    
    
    for item in path{
        
        if item == "U"{
            bal += 1
        }else{
            bal -= 1
        }
        
        if bal == 0 && below == false{
            below = true
           
            bal = 0
        }else if bal == 0{
             result+=1
            below = false
        }
        
    }
    
    
    
    return result
}


countingValleys(steps: 8, path: "DDUUDDUDUUUD")


/*
 

 func countingValleys(n: Int, s: String) -> Int {
     var valley = 0
     var countU = 0
     var reachGround = true
     for step in s{
         
         if(step == "U"){
             countU  = countU + 1
             
         }else{
             countU = countU - 1
         }
       
         if(countU < 0 && reachGround){
             valley = valley+1
             reachGround = false
         }
         if(countU == 0){
             reachGround = true
         }
         
     }
     return valley
     }
 countingValleys(n: 8, s: "UDDDUDUU")  //Expected: 1
 countingValleys(n: 12, s: "DDUUDDUDUUUD") //Expected : 2
 
 */
