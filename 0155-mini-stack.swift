import Foundation

/// A stack data structure that supports retrieving the minimum element in constant time.
///
/// `MinStack` behaves like a standard stack with push and pop operations,
/// but also allows retrieving the minimum value in the stack in O(1) time
/// by storing the current minimum alongside each pushed element.
class MinStack {
    
    private var stack: [(num: Int, min: Int)] = []
    
    /// Creates an empty minimum stack.
    init() {}
    
    /// Pushes a value onto the stack.
    ///
    /// - Parameter val: The integer value to be added to the top of the stack.
    ///   The current minimum at this point is also stored internally.
    func push(_ val: Int) {
        let minVal = stack.last?.min ?? val
        let tuple = (val, min(val, minVal))
        stack.append(tuple)
    }
    
    /// Removes and returns the value at the top of the stack.
    ///
    /// - Returns: The integer value that was most recently pushed.
    @discardableResult
    func pop() -> Int {
        return stack.removeLast().num
    }
    
    /// Returns the value at the top of the stack without removing it.
    ///
    /// - Returns: The integer value at the top of the stack.
    func top() -> Int {
        return stack.last!.num
    }
    
    /// Returns the minimum value currently in the stack.
    ///
    /// - Returns: The smallest integer stored in the stack.
    func getMin() -> Int {
        return stack.last!.min
    }
}
