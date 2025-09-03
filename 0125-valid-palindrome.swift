import Foundation

class Solution {
    
    /// Determines if a given string is a palindrome.
    ///
    /// not case sensitive, ignores symbols and whitespace
    ///
    /// - Parameter s: A string to be verified as a palindrome containing only printable ASCII characters.
    /// - Returns: **true** if given string is a palindrome, otherwise **false**
    func isPalindrome(_ s: String) -> Bool {
        
        var chars: [Character] = Array(s)
        var i = 0
        var j = chars.count - 1
        
        while i < j {
            guard chars[i].isLetter || chars[i].isNumber else {
                i += 1
                continue
            }
            guard chars[j].isLetter || chars[j].isNumber else {
                j -= 1
                continue
            }
            if chars[i].lowercased() != chars[j].lowercased() { return false }
            i += 1
            j -= 1
        }
        
        return true
    }
}
