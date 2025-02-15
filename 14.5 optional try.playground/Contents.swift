import Cocoa

enum UserError: Error {
    case badId, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

// try? convert the error into nil (optional)
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
