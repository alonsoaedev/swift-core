import Cocoa

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]
for filename in filenames {
    if !filename.hasSuffix(".jpg") {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
    }
    
    if multiples.count == 10 {
        break
    }
}
print(multiples)

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}
