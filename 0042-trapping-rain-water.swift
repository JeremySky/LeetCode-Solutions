import Foundation

class Solution {
    
    /// Computes the total amount of water that can be trapped after raining, given an elevation map.
    ///
    /// Each element in `height` represents the height of a vertical bar of width 1.
    /// Water can be trapped between the bars depending on their relative heights.
    ///
    /// - Parameter height: An array of non-negative integers representing bar heights.
    /// - Returns: The total volume of water trapped between the bars.
    func trap(_ height: [Int]) -> Int {
        
        var left = 0
        var right = height.count - 1
        var leftMax = height[left]
        var rightMax = height[right]
        var trappedWater = 0
        
        while left < right {
            
            if height[left] < height[right] {
                
                if height[left] > leftMax {
                    leftMax = height[left]
                } else {
                    trappedWater += leftMax - height[left]
                }
                left += 1
                
            } else {
                
                if height[right] > rightMax {
                    rightMax = height[right]
                } else {
                    trappedWater += rightMax - height[right]
                }
                right -= 1
            }
        }
        
        return trappedWater
    }
}
