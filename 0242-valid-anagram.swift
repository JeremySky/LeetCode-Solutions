import Foundation

class Solution {
    
    /// Determines whether two given strings are anagrams of each other. .
    ///
    /// An anagram is formed by rearranging the characters of a word or phrase
    /// to produce another word or phrase, using all the original characters exactly once.
    ///
    /// - Parameters:
    ///   - s: The first input string.
    ///   - t: The second input string.
    /// - Returns: **true** if `s` and `t` are anagrams of each other, otherwise **false**.
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var charFreq = [Character:Int]()
        
        for char in s { charFreq[char, default: 0] += 1 }
        
        for char in t {
            if let count = charFreq[char], count > 0 {
                charFreq[char] = count - 1
            } else {
                return false
            }
        }
        
        return true
    }
}
