import Cocoa

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// ------

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

var num1 = 1000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    return number * number
}

var number: Int? = nil
// shadowing
if let number = number { // technically there are two variables with the same name
    print(square(number: number))
}

// more concise
if let number {
    print(square(number: number))
}
