import Foundation

class Solution {
    
    /// Groups a list of strings into collections of anagrams.
    ///
    /// Two strings are considered anagrams if they contain the same characters
    /// with the same frequency, regardless of order. Each group in the result
    /// contains strings that are anagrams of each other.
    ///
    /// - Parameter strs: An array of strings to be grouped.
    /// - Returns: An array of string arrays, where each inner array represents
    ///   one group of anagrams.
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var groupAnagrams = [String:[String]]()
        
        for str in strs {
            let sortedStr = String(str.sorted())
            
            groupAnagrams[sortedStr, default: []].append(str)
        }
        
        return Array(groupAnagrams.values)
    }
}
