import Cocoa

var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Weekend {
    case saturday, sunday
}

var day = Weekday.monday
day = Weekday.tuesday
day = .wednesday
day = .thursday
//day = Weekday.january // doesn't exists in the enum

enum TypeJob: String {
    case fulltime
    case parttime = "part time"
}

let wishJobType = TypeJob.fulltime
print("I want a \(wishJobType)")
let actualJobType = TypeJob.parttime
print("I have a \(actualJobType.rawValue)")

enum Month: Equatable {
    case january(Int)
    case february(Int)
    case march(Int)
}

let month = Month.january(1)
print(month)
print(month == Month.february(2))
