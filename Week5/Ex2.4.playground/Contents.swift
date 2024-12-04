import UIKit

/* Write a function that calculates the factorial of a given number.
Instructions:
Define a function called factorial that takes an integer n as a parameter.
Calculate the factorial of n (e.g., 5! = 5 * 4 * 3 * 2 * 1).
Return the factorial value.
Test the function with different values.

Example Input: 5
Example Output: 120 */

func factorial(n:Int) -> Int{
    var result = 1
    for cal in 1...n{
        result *= cal
    }
    print("\(n)!= \(result)")
    return result
}
factorial(n: 5)
