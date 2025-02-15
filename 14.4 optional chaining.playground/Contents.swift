import Cocoa

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

let book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

let names2 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names2["Vincent"]?.first?.uppercased() ?? "?"
