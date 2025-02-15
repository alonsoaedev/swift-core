import Cocoa

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLetterIdentical(first: String, second: String) -> Bool {
    return first.sorted() == second.sorted()
}

func pitagoras(a: Double, b: Double) -> Double {
    sqrt((a * a) + (b * b))
}

let c = pitagoras(a: 3, b: 4)
print(c)
