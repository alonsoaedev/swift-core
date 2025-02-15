import Cocoa

struct Game {
    var score = 0
}

var game = Game()
print("Simple game")
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1 // A bug, we do not print this change

struct GameObservable {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

print("Observable game")
var gameObservable = GameObservable()
gameObservable.score += 10
gameObservable.score -= 3
gameObservable.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New contact will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E.")
app.contacts.append("Allen W.")
app.contacts.append("Ish S.")
