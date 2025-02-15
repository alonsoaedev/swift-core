import Cocoa

func hireEmployee(name: String) {}
func hireEmployee(title: String) {}
func hireEmployee(location: String) {}

let lyric = "I see a red dog and I want it painted black."
print(lyric.hasPrefix("I see"))

func isUpperCase(_ string: String) -> Bool {
    return string == string.uppercased()
}
let string = "HELLO, WORLD"
let result = isUpperCase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) times \(number) = \(i * number)")
    }
}
printTimesTable(for: 5)
