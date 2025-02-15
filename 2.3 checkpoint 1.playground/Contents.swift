import Cocoa

/*
 1. Creates a constant holding any temperature in Celsius.
 2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 3. Prints the result for the user, showing both the Celsius and Fahrenheit values.
*/

let celsiusTemperature = 151.0
let fahrenheitTemperature = ((celsiusTemperature * 9) / 5) + 32

print("Celsius temperature: \(celsiusTemperature)")
print("Fahrenheit temperature: \(fahrenheitTemperature)")
