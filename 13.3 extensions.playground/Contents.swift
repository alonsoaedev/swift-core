import Cocoa

/*
 Benefits:
    - Code completion
    - Code organization
    - Internal access
*/


var quote = "  The truth is rarely pure and never simple  "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String { // past due to the value is new
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() { // infinitive verb due to change the value it self
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
But I keep crusing
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""
print(lyrics.lines)

let trimmed2 = quote.trimmed()
//quote.trim()

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed3 = trim(quote)
print(trimmed)
print(trimmed2)
print(trimmed3)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
    // to get the defaults memberwise initializers we have to move this to an extension
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord Of The Rings", pageCount: 1178, readingHours: 24)
let bloodAndFire = Book(title: "Blood And Fire", pageCount: 1220)
