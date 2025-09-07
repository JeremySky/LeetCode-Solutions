//
//  0739-daily-temperatures.swift
//  
//
//  Created by Jeremy Manlangit on 9/6/25.
//

import Foundation

class Solution {
    
    /// Calculates the number of days until a warmer temperature for each day in the input.
    ///
    /// For each temperature in the array, the algorithm determines how many days
    /// one would have to wait until a warmer temperature occurs.
    /// If there is no future day with a warmer temperature, the result for that day is `0`.
    ///
    /// This is solved in O(n) time using a monotonic stack that stores indices of unresolved temperatures.
    ///
    /// Example:
    /// ```swift
    /// dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73])
    /// // [1, 1, 4, 2, 1, 1, 0, 0]
    /// ```
    ///
    /// - Parameter temperatures: An array of daily temperatures.
    /// - Returns: An array where the value at each index `i` represents
    ///   the number of days until a warmer temperature after day `i`.
    ///   Returns `0` if no warmer temperature exists.
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        guard temperatures.count > 1 else { return [0] }

        var answer: [Int] = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []

        for i in 0..<temperatures.count {
            while let last = stack.last, temperatures[i] > temperatures[last] {
                let j = stack.removeLast()
                answer[j] = i - j
            }
            stack.append(i)
        }

        return answer
    }
}
