import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining = 14
    /*
     Vars and consts properties that are initialized could be avoid in the initializer
     For example, given the properties above:
      - ❌ let emp = Employee() -> because of the property name is not initialized it cannot be avoid in the initializer
      - ✅ let emp = Employee(name: "Alonso") -> because of the property vacationReaminig is initialized it can be avoid in the initializer
      - ✅ let emp = Employee(name: "Alonso", vacationRemaining: 5)
     */
    
    /*
     Mutating keyword won't allow to create a constant Employee and use the function,
     you will allow to create a contant instance of the structure but not use the mutating func at the same time
     */
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Ops! There are not enough days remaining")
        }
    }
}

var archer = Employee(name: "Sterling Archer")
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let kane = Employee(name: "Lana Kane") // this is allowed but this instance won't be alow to call the takeVacation function
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)
