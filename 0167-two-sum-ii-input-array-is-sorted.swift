import Foundation

class Solution {
    
    /// Finds two distinct indices in the given array whose values add up to the target.
    ///
    /// - Parameters:
    ///   - numbers: An array of integers sorted in non-decreasing order containing two numbers who's sum equals target.
    ///   - target: The sum of two values from numbers.
    /// - Returns: Indices of two numbers added by one as an integer array of length 2.
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var j: Int = numbers.count - 1
        
        for i in 0..<numbers.count {
            while numbers[i] + numbers[j] > target { j -= 1 }
            if numbers[i] + numbers[j] == target { return [i+1, j+1] }
        }
        
        return []
    }
}
