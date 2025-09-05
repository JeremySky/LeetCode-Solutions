import Foundation

class Solution {
    
    /// Returns the maximum amount of water a container can hold, given an array of vertical line heights.
    ///
    /// The container is formed by choosing two lines, where the area is determined by the shorter line’s height
    /// and the distance between the two lines.
    ///
    /// - Parameter height: An array of non-negative integers representing vertical line heights.
    /// - Returns: The maximum area of water that can be contained.
    func maxArea(_ height: [Int]) -> Int {
        
        var left: Int = 0
        var right: Int = height.count - 1
        var maxArea: Int = 0
        
        while left < right {
            
            let length = right - left
            let minHeight = min(height[left], height[right])
            let area = length * minHeight
            
            maxArea = max(maxArea, area)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxArea
    }
}
