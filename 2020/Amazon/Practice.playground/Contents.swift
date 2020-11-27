func countingValleys(steps: Int, path: String) -> Int {

    
    var count = 0
    var belowCount = 0
    for item in path{
        print(item)
        if count == 0 && item == "U"{
            print("up")
            count+=1
        }else if item == "U"{
            count+=1
        }
        
        if  count == 0 && item == "D" {
            print("down")
            belowCount+=1
            count-=1
        }else if item == "D"{
            count-=1
        }
        
        
    }
    
return belowCount
}

countingValleys(steps: 12, path: "DDUUDDUDUUUD")
/*

_          /\
 \  /\    /
  \/  \/\/

 
 */
