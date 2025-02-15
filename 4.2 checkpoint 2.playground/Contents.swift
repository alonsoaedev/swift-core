import Cocoa

/*
 This time the challenge is to create an array of strings,
 then write some code that prints the number of items in the array
 and also the number of unique items in the array.
*/
let names = ["Alonso", "Arturo", "María Rosa", "Alonso"]
print(names.count)
let uniqueNames = Set(names)
print(uniqueNames.count)
