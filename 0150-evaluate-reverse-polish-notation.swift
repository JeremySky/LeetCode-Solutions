import Foundation

class Solution {
    
    /// Evaluates an arithmetic expression written in Reverse Polish Notation (RPN).
    ///
    /// In RPN, operators follow their operands. For example:
    /// - `["2", "1", "+", "3", "*"]` represents the expression `(2 + 1) * 3` and evaluates to `9`.
    ///
    /// - Parameter tokens: An array of strings, where each element is either
    ///   a number  or one of the supported operators: `+`, `-`, `*`, `/`.
    /// - Returns: The integer result of evaluating the given RPN expression.
    func evalRPN(_ tokens: [String]) -> Int {
        
        var stack: [Int] = []
        
        for token in tokens {
            
            guard let num = Int(token) else {

                let num2 = stack.removeLast()
                let num1 = stack.removeLast()

                switch token {
                case "+":
                    stack.append(num1 + num2)
                case "-":
                    stack.append(num1 - num2)
                case "*":
                    stack.append(num1 * num2)
                case "/":
                    stack.append(num1 / num2)
                default:
                    continue
                }
                continue
            }

            stack.append(num)
        }
        
        return stack.first!
    }
}
