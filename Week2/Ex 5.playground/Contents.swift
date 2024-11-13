import UIKit

// Write a program that declares a variable for your birth year and calculates your age using the current year. Use constants and variables appropriately.

let thisyear = Calendar.current.component(.year, from: Date())

var birthYear:Int = 2007

var age:Int = thisyear - birthYear

print("This year you are \(age) years old.")
