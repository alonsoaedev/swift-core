import Cocoa

enum PassworError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PassworError.short }
    if password == "12345" { throw PassworError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let password = "12345"

do {
    let result = try checkPassword(password)
    print("Password rating: \(result)")
} catch PassworError.short {
    print("Please use a longer password")
} catch PassworError.obvious {
    print("I have the same combination on my luggage")
} catch {
    print("There was an error: \(error.localizedDescription)")
}
