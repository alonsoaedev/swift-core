import Cocoa

let number = 0.1 + 0.2
print(number)

let integer = 1
let double = 2.0
//let sum = integer + double // cannot mix integer numbers with floating numbers
let castDoubleToInt = integer + Int(double)
let castIntToDouble = Double(integer) + double

var rating = 5.0
print(type(of: rating))
rating += 2
rating *= 3
rating /= 2

var score = 5
print(type(of: score))
score /= 2
