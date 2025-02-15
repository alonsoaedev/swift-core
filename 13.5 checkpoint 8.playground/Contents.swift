import Cocoa

/*
 Make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it.
 Your protocol should require the following:
    - A property storing how many rooms it has.
    - A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
    - A property storing the name of the estate agent responsible for selling the building.
    - A method for printing the sales summary of the building, describing what it is along with its other properties.
 */

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var stateAgent: String { get }
    func summarySales()
}

extension Building {
    func summarySales() {
        print("This building has \(rooms) rooms, it costs \(cost) dollars and it's selling by \(stateAgent)")
    }
}

struct House: Building {
    let rooms: Int
    let cost: Int
    var stateAgent: String
}

struct Office: Building {
    let rooms: Int
    let cost: Int
    var stateAgent: String
}

let house = House(rooms: 2, cost: 1_000_000, stateAgent: "Mike Ross")
let office = Office(rooms: 20, cost: 16_500_000, stateAgent: "Harvey Specter")

house.summarySales()
office.summarySales()
