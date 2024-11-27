import UIKit

// Write a program that calculates the sum of the digits of a given number. For example, given number is 2534, the sum will be 2+5+3+4

// Hint: Convert the number to a string and iterate over its characters.
let number = 2536
let num =  String(number)

var sum = 0
for char in num{
    if let n = Int(String(char)){
        sum += n
    }
}
print("Sum is \(sum)")
