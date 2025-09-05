import Foundation

class Solution {
    
    /// Finds unique groups of three numbers from a collection who's total equals 0.
    ///
    /// - Parameter nums: An array of integers.
    /// - Returns: Unique triplets of numbers who's sum totals 0.
    func threeSum(_ nums: [Int]) -> [[Int]] {

        let nums = nums.sorted()
        var result: [[Int]] = []

        for i in 0..<nums.count-2 {
            guard nums[i] <= 0 else { return result }
            if i > 0, nums[i] == nums[i-1] { continue }

            let target = -nums[i]
            var left = i+1
            var right = nums.count-1

            while left < right {

                let currentSum = nums[left] + nums[right]

                if currentSum == target {
                    result.append([nums[i], nums[left], nums[right]])
                    while left < right && nums[left] == nums[left+1] { left += 1 }
                    while left < right && nums[right] == nums[right-1] { right -= 1 }
                    left += 1
                    right -= 1
                } else if currentSum < target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }

        return result
    }
}
