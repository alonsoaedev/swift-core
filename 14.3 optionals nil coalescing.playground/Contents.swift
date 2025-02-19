import Cocoa

let captains = [
    "Enterprise": "Picard",
    "Vayager": "Janeway",
    "Defiant": "Sisko",
]

var new = captains["Serenity"] ?? "N/A"
new = captains["Serenity", default: "N/A"] // same

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
