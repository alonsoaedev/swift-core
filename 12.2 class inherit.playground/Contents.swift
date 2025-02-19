import Cocoa

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces")
    }
}

final class Manager: Employee { // No class can inherit from this class
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

robert.printSummary()
