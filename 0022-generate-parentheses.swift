//
//  0022-generate-parentheses.swift
//  
//
//  Created by Jeremy Manlangit on 9/6/25.
//

import Foundation

class Solution {
    
    /// Generates all valid combinations of `n` pairs of parentheses.
    ///
    /// - Parameter n: The number of pairs of parentheses.
    /// - Returns: An array of strings, where each string is a valid parentheses combination.
    func generateParenthesis(_ n: Int) -> [String] {
        
        var stack: [String] = []
        
        func backtrack(_ open: Int, _ close: Int, _ string: String) {
            if open < n {
                backtrack(open+1, close, string + "(")
            }
            if close < open {
                backtrack(open, close+1, string + ")")
            }
            if close == n {
                stack.append(string)
             }
        }
        
        backtrack(0, 0, "")
        return stack
    }
}
