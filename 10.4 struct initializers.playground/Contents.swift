import Cocoa

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R.")
print(player.number)

struct EmployeeWithMemberwise {
    var name: String
    var yearsActive = 0
}

let roslin = EmployeeWithMemberwise(name: "Laura Roslin")
let adama = EmployeeWithMemberwise(name: "William Adama", yearsActive: 45)

struct EmployeeCustomeInitializer {
    var name: String
    var yearsActive = 0

    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

//let roslin = EmployeeCustomeInitializer(name: "Laura Roslin") // will crash

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let laura = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()
