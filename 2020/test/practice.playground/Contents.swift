/*
 26. Remove Duplicates from Sorted Array
 Easy
 
 2930
 
 5742
 
 Add to List
 
 Share
 Given a sorted array nums, remove the duplicates in-place such that each element appears only once and returns the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 Example 1:
 
 Given nums = [1,1,2],
 
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
 
 It doesn't matter what you leave beyond the returned length.
 Example 2:
 
 Given nums = [0,0,1,1,1,2,2,3,3,4],
 
 Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.
 
 It doesn't matter what values are set beyond the returned length.
 */


func removeDuplicates(_ nums:  [Int]) -> Int {
    guard nums.count>0 else {
        return 0
    }
    var j = 1
    var count = 0
    for i in 0..<nums.count-1{
        if nums[i] != nums[j]{
            count+=1
            j+=1
            
        }else{
            j+=1
            
        }
    }
    
    
    
    
    return count+1
}



//print(removeDuplicates([0,0,1,1,1,2,2,3,3,4]))



/*
 15. 3Sum
 
 Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
 
 Notice that the solution set must not contain duplicate triplets.
 
 
 
 Example 1:
 
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Example 2:
 
 Input: nums = []
 Output: []
 Example 3:
 
 Input: nums = [0]
 Output: []
 
 */


func threeSum(_ nums: [Int]) -> [[Int]] {
    var newArr = [[Int]]()
    
    guard nums.count>=3 else {
        return newArr
    }
    
    let sortedArr = nums.sorted()
    print(nums.sorted())
    
    for i in 0..<sortedArr.count{
        
        //removing duplicates
        if i != 0, sortedArr[i] == sortedArr[i-1]{
            continue
        }
        
        var left = i+1
        var right = sortedArr.count-1
        
        
        
        while left<right{
            let sum = sortedArr[i]+sortedArr[left]+sortedArr[right]
            print("i",i)
            print("i",sortedArr[i])

            print("left", left)
            print("left", sortedArr[left])

            print("right",right)
            print("right",sortedArr[right])

            print(sum)
            print("")
            
            if sum > 0{
                right-=1
            }
            else if sum < 0{
                left+=1
            }else{

                if left-1 > i, sortedArr[left] == sortedArr[left-1]{
                    left += 1
                }else{
                    newArr.append([sortedArr[i],sortedArr[left],sortedArr[right]])
                    left += 1
                }
            }
        }
    }
    
    print(newArr)
    return [[]]
}




print(threeSum([-1,0,1,2,-1,-4]))
