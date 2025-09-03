import Foundation

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        var rows = [Set<Character>](repeating: [], count: 9)
        var columns = [Set<Character>](repeating: [], count: 9)
        var subsquares = [Set<Character>](repeating: [], count: 9)
        
        for i in 0..<9 {
            for j in 0..<9 {
                let cell = board[i][j]
                guard cell != "." else { continue }
                let subsquareID = (i / 3 * 3) + (j / 3)
                guard
                    !rows[i].contains(cell) &&
                    !columns[j].contains(cell) &&
                    !subsquares[subsquareID].contains(cell)
                else {
                    return false
                }
                
                rows[i].insert(cell)
                columns[j].insert(cell)
                subsquares[subsquareID].insert(cell)
            }
        }
        
        return true
    }
}
