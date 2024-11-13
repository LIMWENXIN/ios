import UIKit

// Create a program that converts an Int to a String and prints a descriptive sentence using string interpolation.

let age = 17

let beforeTypeOfAge = type(of: age)
print("Before convert to String the Type is:", beforeTypeOfAge)

let ageAsString = String(age)

print("I am ", ageAsString, "Years old.")

let typeOfAge = type(of: ageAsString)
print("The type of age is: ",typeOfAge)

