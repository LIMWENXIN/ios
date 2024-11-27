import UIKit

// Use a for loop to print all odd numbers from 1 to 50.

print("The Odd numbers from 1 to 50.")
for number in stride(from: 1, to: 50, by:2) {
    print("\(number), ",terminator: "")
}
                     
/*
print("The Odd numbers from 1 to 50.")
for number in 1..<50{
    if number % 2 != 0{
        print("Number \(number) is even.")
    }
}

 print("The Odd numbers from 1 to 50. The odd number is")
 for number in 1...50{
     if number % 2 != 0{
         print(" \(number)",terminator: "")
     }
 }
 */


