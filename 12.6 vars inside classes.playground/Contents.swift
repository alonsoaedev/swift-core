import Cocoa

class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)
//user = User() // It'll fail

var user2 = User()
user2.name = "Taylor"
user2 = User()
print(user2.name)
