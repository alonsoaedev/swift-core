import Cocoa

var countDown = 10

while countDown > 0 {
    print("\(countDown)...")
    countDown -= 1
}
print("Blast off.")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll).")
}
print("Critical hit!")
