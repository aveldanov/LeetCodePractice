/*
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

 Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?

  

 Example 1:

 Input: nums = [2,2,1]
 Output: 1
 Example 2:

 Input: nums = [4,1,2,1,2]
 Output: 4
 Example 3:

 Input: nums = [1]
 Output: 1
 */



func singleNumber(_ nums: [Int]) -> Int {
    
    var dict = [Int:Int]()
    for item in nums{
        print(item)
        dict[item] = dict[item] == nil ? 1 : dict[item]! + 1
        
    }
    
    print(dict)
    
    for (k,v) in dict{
        
        if v == 1{
            return k
        }
    }
    return -1
}


singleNumber([4,1,2,1,2])
