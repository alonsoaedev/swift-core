import Cocoa

func greetUser() {
    print("Hello")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()

// ---

let sayHello = {
    print("Hello there")
}
sayHello()

// ---

let greet = { (name: String) -> String in
    "Hello \(name)"
}
greet("Alonso")

// ---
// closure with param but no return value
let printName = { (name: String) in
    print("My name is \(name)")
}
printName("Alonso")

// ---
// closure with no param but return value
let printSomething = { () -> String in
    "Closure with no param but return value"
}
print(printSomething())

// ---

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}
let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

// ---

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// function written as a function
func sortFirstCaptainFunction(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}
let captainFirstTeamFunction = team.sorted(by: sortFirstCaptainFunction)
print(captainFirstTeamFunction)

// function written as a closure
let sortFirstCaptainClosure = { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeamClosure = team.sorted(by: sortFirstCaptainClosure)
print(captainFirstTeamClosure)

// closure called as a anonymous function
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})
print(captainFirstTeam)
