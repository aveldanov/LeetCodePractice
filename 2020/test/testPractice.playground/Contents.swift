

func combine(nums:[Int])->Int{
    
    var result = 0
    var j = 0
    var newArr = nums
    var current = 0
    for i in 0..<nums.count{
        
        if newArr[i] != 0{
            j = i
            current = newArr[i]

        }
        
        
        while (newArr[j] - current) >= 0 && j<newArr.count{
            print(newArr[j]-current)
            if j == newArr.count-1{
                newArr[j] = newArr[j] - current // 0 0 2
                if newArr[j]>0{
                    result = result + nums[j] - newArr[j]
                }
                print("result1",result)
            }else{
                newArr[j] = newArr[j] - current
                if newArr[j]>0{
                    result = result + nums[j] - newArr[j]
                }
                print("result1",result)
                j+=1
            }
        }
        print(newArr)
    }
    
    print(result)
    return 0
}

combine(nums: [3,3,5,2,3])
