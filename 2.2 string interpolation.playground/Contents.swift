import Cocoa

let fisrtPart = "Hello, "
let secondPart = "world!"
let greeting = fisrtPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let luggageCode = "1" + "2" + "3" + "4" + "5"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
//let missionMessage = "Apollo " + number + " landed on the moon." // cannot mix string with numbers, decimal numbers or boolan by adding
//let missionMessage = "Apollo " + String(number) + " landed on the moon." // not easier to read than interpolation
let missionMessage = "Apollo \(number) landed on the moon."

print("5 x 5 = \(5 * 5)")
