import Foundation

class Solution {
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
