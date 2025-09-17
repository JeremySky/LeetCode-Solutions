import Foundation

class Solution {
    
    /// Calculates the number of car fleets that will arrive at the destination.
    ///
    /// A *car fleet* is defined as one or more cars traveling together at the same speed,
    /// where faster cars may catch up to slower cars but cannot pass them. If a car
    /// catches up exactly at the destination, it is considered part of the fleet.
    ///
    /// - Parameters:
    ///   - target: The destination mile marker all cars are traveling toward.
    ///   - position: An array of integers representing the starting mile positions of each car.
    ///   - speed: An array of integers representing the speed (miles per hour) of each car.
    ///            The `i`th element of `speed` corresponds to the `i`th element of `position`.
    ///
    /// - Returns: The total number of car fleets that will arrive at the target.
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {

        let cars: [(position: Double, speed: Double)] = zip(position, speed).sorted { $0.0 > $1.0 }.map { (Double($0.0), Double($0.1)) }
        var timeStack: [Double] = []
        

        for car in cars {
            let time = (Double(target) - car.position) / car.speed

            if timeStack.isEmpty || time > timeStack.last! {
                timeStack.append(time)
            }
        }

        return timeStack.count
    }
}

