/*
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 
 Follow up: The overall run time complexity should be O(log (m+n)).
 
 
 
 Example 1:
 
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.
 Example 2:
 
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 Example 3:
 
 Input: nums1 = [0,0], nums2 = [0,0]
 Output: 0.00000
 Example 4:
 
 Input: nums1 = [], nums2 = [1]
 Output: 1.00000
 Example 5:
 
 Input: nums1 = [2], nums2 = []
 Output: 2.00000
 */


//O(n)
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var nums1 = nums1
        var nums2 = nums2
        if nums1.count < nums2.count{
            return findMedianSortedArrays(nums2, nums1)
        }
        var low = 0
        var high = nums1.count
        
        while low<=high {
            var mid1 = (low+high)/2
            var mid2 = (nums1.count+nums2.count+1)/2 - mid1
            print(mid1,mid2)
            
            var L1 = mid1 == 0 ? Int.min : nums1[(mid1-1)]
            var L2 = mid2 == 0 ? Int.min : nums2[(mid2-1)]
            var R1 = mid1 == nums1.count ? Int.max : nums1[(mid1)]
            var R2 = mid2 == nums2.count ? Int.max : nums2[(mid2)]
            
            print(L1,L2,R1,R2)//1324
            
            
            
                        if L1<=R2 && L2<=R1{
            
                            print("Boom")
                            if ((nums1.count + nums2.count) % 2) == 0 {
                                var val1 = Double(max(L2,L1))
                                var val2 = Double(min(R2,R1))
                                return  (val1 + val2) / 2
                            }else{
                                return Double(max(L2,L1))
                            }
                        }else if L1 > R2 {
                            high = mid1 - 1
                        }else{
                            low = mid1 + 1
                        }
            
//            
//            if L1 > R2 {
//                high = mid1 - 1
//            }else{
//                low = mid1 + 1
//            }
//            
//            if ((nums1.count + nums2.count) % 2) == 0 {
//                var val1 = Double(max(L2,L1))
//                var val2 = Double(min(R2,R1))
//                return  (val1 + val2) / 2
//            }else{
//                return Double(max(L2,L1))
//            }
//            
            
            
            
        }
        
        
        
        return -1.0
    }
}

//
//class Solution{
//    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//        guard nums1.count <= nums2.count else { return findMedianSortedArrays(nums2, nums1) }
//
//        let x = nums1.count
//        let y = nums2.count
//        var low = 0
//        var high = x
//
//        while low <= high {
//            let partionX = (low + high) / 2
//            let partionY = ((x + y + 1) / 2) - partionX
//
//            print(partionX,partionY)
//            let maxLeftX = partionX == 0 ? Int.min : nums1[partionX - 1]
//            let maxLeftY = partionY == 0 ? Int.min : nums2[partionY - 1]
//            let minRightX = partionX == x ? Int.max : nums1[partionX]
//            let minRightY = partionY == y ? Int.max : nums2[partionY]
//
//
//            print(maxLeftX,maxLeftY, minRightX,minRightY)//3142
//            //L1,L2,R1,R2
//
//            if maxLeftX <= minRightY && maxLeftY <= minRightX {
//                if ((x + y) % 2) == 0 {
//                    var val1 = Double(max(maxLeftX,maxLeftY))
//                    var val2 = Double(min(minRightX,minRightY))
//                    return  (val1 + val2) / 2
//                }
//                else {
//                    return Double(max(maxLeftX,maxLeftY))
//                }
//            }
//            else if maxLeftX > minRightY {//L2>R1
//                high = partionX - 1
//            }
//            else {
//                low = partionX + 1
//            }
//        }
//        return -1.0
//    }
//}

let solution = Solution()

solution.findMedianSortedArrays([1,2], [3,4])
