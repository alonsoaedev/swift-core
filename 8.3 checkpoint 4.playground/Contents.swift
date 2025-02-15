import Cocoa

/*
  write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. 
  That sounds easy, but there are some catches:

  - You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
  - If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
  - You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
  - If you can’t find the square root, throw a “no root” error.
*/

enum SquareRootError: Error {
    case outOfBound, noRoot
}

func squareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareRootError.outOfBound
    }

    for i in 1...10_000 {
        if number == i * i {
            return i
        }
    }
    throw SquareRootError.noRoot
}

// case out of bound, lower negative bound
let inputs = [
    "lowerNegativeBoundNumber": -1,
    "lowerZeroBoundNumber": 0,
    "upperBoundNumber": 10_001,
    "noSquarableNumber": 8,
    "squareableNumber": 9,
]

for (inputCase, number) in inputs {
    do {
        let result = try squareRoot(number)
        print("The square root of \(number) is \(result)")
    } catch SquareRootError.outOfBound {
        print("\(number) is out of bound")
    } catch SquareRootError.noRoot {
        print("\(number) has no root")
    } catch {
        print("Ups")
    }
}
