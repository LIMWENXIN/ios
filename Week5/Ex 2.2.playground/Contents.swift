import UIKit

/* Create a function that counts how many even and odd numbers are there between two given numbers.

Instructions:
Define a function called countEvenOdd that takes two integers start and end.
Use a for loop to iterate from start to end.
For each number, use an if-else statement to check if it is even or odd.
Count the number of even and odd numbers.
Return both counts. */

func countEvenOdd(Start:Int, End:Int){
    var count_Even = 0
    var count_Odd = 0
    
    for number in Start..<End+1{
        if number % 2 != 0{
            count_Even += 1
            print("Even number:\(number)")
        }
        else{
            count_Odd += 1
            print("Odd number: \(number)")
        }
    }
    print("------------------------")
    return count_Even; count_Odd
}

countEvenOdd(Start:1, End:10)
