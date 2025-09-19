import Foundation

class Solution {
    
    /// Computes the area of the largest rectangle in a histogram.
    ///
    /// The histogram is represented by an array of bar heights, where each bar has a width of one unit.
    /// The function uses a monotonic stack to efficiently calculate the maximum rectangular area that can be formed.
    ///
    /// - Parameter heights: An array of integers representing the heights of the histogram.
    /// - Returns: The maximum rectangular area that can be formed within the histogram..
    func largestRectangleArea(_ heights: [Int]) -> Int {
        
        var largestArea: Int = 0
        var stack: [(index: Int, height: Int)] = []
        
        for (index, height) in heights.enumerated() {
            var startIndex = index
            
            while !stack.isEmpty, stack.last!.height > height {
                let (lastIndex, lastHeight) = stack.removeLast()
                let width = index - lastIndex
                let area = lastHeight * width
                largestArea = max(largestArea, area)
                startIndex = lastIndex
            }
        
            stack.append((startIndex, height))
        }
        
        for (index,height) in stack {
            let width = heights.count - index
            let area = height * width
            largestArea = max(largestArea, area)
        }
        
        return largestArea
    }
}
