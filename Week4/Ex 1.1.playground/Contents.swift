import UIKit

func print_odd(start:Int, end:Int){
    for number in stride(from: start, to: end+1, by:2) {
        print("The Odd number is \(number)")
    }
    print("The Number Start from \(start) to \(end).")
}
print_odd(start: 1, end: 5)

  
// Use a for loop to print all odd numbers from 1 to 50.
/*
 print("The Odd numbers from 1 to 50.")
 for number in stride(from: 1, to: 50, by:2) {
     print("\(number), ",terminator: "")
 }
 
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


