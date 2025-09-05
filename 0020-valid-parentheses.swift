import Foundation

class Solution {
    
    /// Checks whether a string of parentheses is valid (balanced and properly nested).
    ///
    /// - Parameter s: A string consisting only of the characters `(`, `)`, `[`, `]`, `{`, `}`.
    /// - Returns: `true` if every opening bracket has a matching closing bracket in the correct order;
    ///   otherwise, `false`.
    func isValid(_ s: String) -> Bool {
        
        var stack = [Character]()
        
        for c in s {
            
            switch c {
                case ")":
                if stack.last != "(" { return false }
                case "]":
                if stack.last != "[" { return false }
                case "}":
                if stack.last != "{" { return false }
                default:
                stack.append(c)
                continue
            }
            
            stack.removeLast()
        }
        
        return stack.isEmpty
    }
}

