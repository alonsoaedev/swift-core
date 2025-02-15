import Cocoa

let actor = "Denzel Washington"
let filename = "paris.jpg"

let quote = "Then he tapped a sign saying \"Believe\" and wlked away."

let multiLineString = """
A day in
the life of an
Apple Enginner
"""

/* The final three quotes must be on a line by themselves.
let incorrectMultiLineString = """
Something to
split"""
*/

let doubleQuoteInMultiLineTest = """
Then he tapped a sign
saying "Believe"
and walked away.
"""

let nameLength = actor.count
print(nameLength)

print(actor.uppercased())
print(multiLineString.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))
