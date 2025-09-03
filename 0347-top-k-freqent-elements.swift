import Foundation

class Solution {
    
    /// Finds the top 'k' frequently occurring integer in a collection.
    ///
    /// - Parameters:
    ///   - nums: Array of integers to analyze for frequency.
    ///   - k: The number of most frequent integers to return.
    /// - Returns: An array containing the `k` integers that occur most frequently in the input array.
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        var numFrequency = [Int:Int]()
        
        for num in nums {
            numFrequency[num, default: 0] += 1
        }
        
        let sorted: [Int] = numFrequency
            .sorted(by: { $0.value > $1.value })
            .map { $0.key }
        
        return Array(sorted.prefix(k))
    }
}
