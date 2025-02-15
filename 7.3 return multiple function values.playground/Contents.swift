import Cocoa

func getUser() -> [String] {
    return ["Alonso", "Acosta"]
}
let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getCompleteName() -> [String: String] {
    return ["name": "Alonso", "lastName": "Acosta"]
}
let completeName = getCompleteName()
print("Name: \(completeName["name", default: "?"]) \(completeName["lastName", default: "?"])")

func getName() -> (firstName: String, lastName: String) {
    return (firstName: "Alonso", lastName: "Acosta")
}
let name = getName()
print("Name: \(name.firstName) \(name.lastName)")

func getName2() -> (String, String) {
    return ("Alonso", "Acosta")
}
let name2 = getName2()
print("Name: \(name2.0) \(name2.1)")

func getName3() -> (firstName: String, lastName: String) {
    return ("Alonso", "Acosta")
}
let (firstName, _) = getName3()
print("Name: \(firstName)")
