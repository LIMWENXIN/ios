import UIKit

/*
 Print numbers from 1 to 20.
 If a number is divisible by 3, print “Fizz”.
 If divisible by 5, print “Buzz”.
 If divisible by both, print “FizzBuzz”.
*/

for number in 1...20{
    if number % 3 == 0{
        print("Number:\(number) Fizz")
    }
    else if number % 5 == 0{
        print("Number:\(number) Buzz")
    }
    else if number % 3 == 0 && number % 5 == 0{
        print("Number:\(number) FizzBuzz")
    }
    
}

