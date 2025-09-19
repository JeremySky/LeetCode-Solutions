import Foundation

class Solution {
    
    /// Performs a binary search to find the index of a target value in a sorted array.
    ///
    /// The array must be sorted in ascending order. If the target exists in the array,
    /// the function returns its index. Otherwise, it returns -1.
    ///
    /// - Parameters:
    ///   - nums: A sorted array of integers to search within.
    ///   - target: The integer value to search for.
    /// - Returns: The index of the target value if found, otherwise -1.
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var left: Int = 0
        var right: Int = nums.count - 1

        while left <= right {
            let mid = (left + right) / 2

            if nums[mid] > target {
                right = mid - 1
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                return mid
            }
        }

        return -1
    }
}
