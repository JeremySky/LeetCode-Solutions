import Foundation

class Solution {
    
    /// Checks whether the given array contains any duplicate values.
    /// 
    /// - Parameter nums: An array of integers to check for duplicates.
    /// - Returns: **true** if  any value appears at least twice in the array; **false** if all elements are unique.
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var seenNums = Set<Int>()
        
        for num in nums {
            // If insertion fails, a duplicate exists
            if !seenNums.insert(num).inserted {
                return true
            }
        }
        
        return false
    }
}
