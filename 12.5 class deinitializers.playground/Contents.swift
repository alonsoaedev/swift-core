import Cocoa

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

// commnet the next line below and the users' lines to get a different context and a different result
var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    // if this line below is commented the user's deinitializer would be called
    // but if it's not the deinitializer wouldn't be called because of the reference still in users array
    users.append(user)
}

print("Loop is finished!")
users.removeAll() // this will call the deinitializers for all the user objects
print("Array is clear!")
