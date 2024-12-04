import UIKit

func finding_min_max(number:[Int]) -> (Int,Int){
    var smallest = number[0]
    var largest = number[0]
    
    for n in number{
        if n < smallest{
            smallest = n
        }
        if largest < n{
            largest = n
        }
    }
    print("The smallest number is \(smallest).")
    print("The largest number is \(largest).")
    return (smallest,largest)
}
finding_min_max(number: [10,1,21,59,100])


/*
Given an array of integers, use a for loop to find the smallest and largest numbers.

Hint:
Create two variables: one for the smallest number and one for the largest number.
Initialize both variables to the first element of the array.
Use a for loop to go through every element in the array. Inside the loop:
If the current number is smaller than smallest, update smallest.
If the current number is larger than largest, update largest.
*/

/*
 let number = [10,1,21,59,100]
 var smallest = number[0]
 var largest = number[0]

 for n in number{
     if n < smallest{
         smallest = n
     }
     if largest < n{
         largest = n
     }
 }
 print("The smallest number is \(smallest).")
 print("The largest number is \(largest).")
 */

