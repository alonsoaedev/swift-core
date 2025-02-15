import Cocoa

var myVar: Int? = 3

if let unwrapped = myVar {
    // Run if myVar has a value inside
}

//guard let unwrapped = myVar else {
//    // Run if myVar doesn't have a value inside
//    // requires to exit the func, use return or throw
//    // the value can be used after
//}


func printSquare(of number: Int?) {
    // guard let number = number else { long way to write guard-sentence
    guard let number else {
        print("Missing number")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 3)
