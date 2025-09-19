import Foundation

class Solution {
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        var lowIndex = 0
        var highIndex = matrix.count - 1
        
        while lowIndex < highIndex {
            let midIndex = (lowIndex + highIndex) / 2
            
            if target > matrix[midIndex].last! {
                lowIndex = midIndex + 1
            } else if target < matrix[midIndex].first! {
                highIndex = midIndex - 1
            } else {
                break
            }
        }
        
        let midIndex = (lowIndex + highIndex) / 2
        let row = matrix[midIndex]
        var low = 0
        var high = row.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            
            if target > row[mid] {
                low = mid + 1
            } else if target < row[mid] {
                high = mid - 1
            } else {
                return true
            }
        }
        
        return false
    }
}
