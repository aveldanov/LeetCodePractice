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


class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        guard nums1.count <= nums2.count else {
            return findMedianSortedArrays(nums2, nums1)
        }
        let x = nums1.count
        let y = nums2.count
        
        var left = 0
        var right = x
        while left<=right {
            let partX = (left+right)/2
            let partY = ((x+y+1)/2) - partX
            
            let maxLeftX = partX == 0 ? Int.min : nums1[partX-1]
            let minRightX = partX == x ? Int.max : nums1[partX]
            let maxLeftY = partY == 0 ? Int.min : nums2[partY-1]
            let minRightY = partY == y ? Int.max : nums2[partY]
            print(maxLeftX,minRightX,maxLeftY,minRightY)

            if maxLeftX<=minRightY && maxLeftY<=minRightX{
                if (x+y)%2==0{
                    return Double(max(maxLeftY,maxLeftX)+min(minRightX,minRightY))/2
                }else{
                    Double(max(maxLeftY, maxLeftX))
                }
            }else if maxLeftX > minRightY{
                right = partX - 1
            }else{
                left = partX + 1
            }
        }
        return -1.0
    }
}



let solution = Solution()

solution.findMedianSortedArrays([1,2], [3,4])
