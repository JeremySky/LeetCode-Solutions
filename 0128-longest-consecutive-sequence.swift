import Foundation

class Solution {
    
    /// Returns the length of the longest consecutive elements sequence given an array of unsorted integers.
    ///
    /// - Parameter nums: An unsorted array of integers to be scanned for longest consecutive elements sequence.
    /// - Returns: The length of the longest consecutive elements sequence.
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        
        var count: Int = 0
        var uniqueNums = Set<Int>(nums)
        
        for baseNum in uniqueNums {
            guard !uniqueNums.contains(baseNum - 1) else { continue }
            
            var currentCount = 1

            while uniqueNums.contains(baseNum + currentCount) {
                currentCount += 1
            }
            
            count = max(count, currentCount)
        }
        
        return count
    }
}
