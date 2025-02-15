import Cocoa

// without type annotations
//let surname = "Lasso"
//var score = 0

// with type annotations
let surname: String = "Lasso"
var score: Int = 0
var tempature: Double = 0

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.1416
var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var sodas: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var team: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}
var style: UIStyle = UIStyle.dark
style = .system

let username: String
// a lot of complex logic
username = "@twostraws"
// a lot of complex logic
print(username)
