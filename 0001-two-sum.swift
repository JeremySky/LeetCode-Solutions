import Foundation

class Solution {
    
    /// Finds two distinct indices in the given array whose values add up to the target.
    ///
    /// This function searches the input array `nums` for two different elements
    /// such that their sum equals the specified `target`. It returns the indices
    /// of those two elements.
    ///
    /// - Parameters:
    ///   - nums: An array of integers.
    ///   - target: The sum of two values from 'nums'.
    /// - Returns: An array containing exactly two integers — the indices of the
    ///   elements in `nums` that add up to `target`.
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        // key - target pair
        // value - index of previous pair
        var numPrevIndex = [Int:Int]()
        
        for (i, num) in nums.enumerated() {
            if let j = numPrevIndex[num] { return [j, i] }
            
            let targetPair = target - num
            numPrevIndex[targetPair] = i
        }
        
        return []
    }
}
