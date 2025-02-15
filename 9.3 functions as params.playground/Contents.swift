import Cocoa

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    for _ in 1..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let rolls = makeArray(size: 5, using: generateNumber)
print(rolls)

let newRolls = makeArray(size: 5) { Int.random(in: 1...20) }
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
