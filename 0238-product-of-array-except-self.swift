import Foundation

class Solution {
    
    /// Returns an array where each element is the product of all numbers in the input array except itself.
    ///
    /// Given an input array `nums`, the result at index `i` is the product of all elements of `nums`
    /// except `nums[i]`.
    ///
    /// - Parameter nums: An array of integers.
    /// - Returns: An array of integers where each element is the product of all other elements except self.
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var answer = [Int](repeating: 1, count: nums.count)
        var leftProduct = nums.first ?? 1
        var rightProduct = nums.last ?? 1
        
        for (i, iNum) in nums.enumerated() {
            if i == 0 { continue }
            
            let j = nums.count - 1 - i
            
            answer[i] *= leftProduct
            answer[j] *= rightProduct
            
            leftProduct *= iNum
            rightProduct *= nums[j]
        }
        
        return answer
    }
}
