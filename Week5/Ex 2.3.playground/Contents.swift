import UIKit

/* Write a function that prints the multiplication table for a given number (up to 10). Use if-else to check if the number is negative.

Instructions:
Define a function called multiplicationTable that takes an integer n.
Use a for loop to print the multiplication table for n (e.g., n * 1, n * 2, …, n * 10).
Use if-else to check if n is negative and print a message: "Please enter a positive number.". */

func multiplicationTable(n:Int){
    if n>0{
        for index in 1...10{
            print("\(n) X \(index) = \(n*index)")
        }
    }
    else{
        print("Please enter a positive number.")
    }
}
multiplicationTable(n: 3)
print("---------------------")
multiplicationTable(n: 8)
