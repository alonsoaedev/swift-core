import Cocoa

// self: The current value of a struct -> 55 , "Hello", true, school.name
// Self: The current type of struct    -> Int, String , Bool, School

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Alonso")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "alonsoae", password: "h4irF0rc30n3")
}

print(Employee.example)
