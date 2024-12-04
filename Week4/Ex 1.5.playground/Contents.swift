import UIKit

func histogram_generator(numbers:[Int]){
    for n in numbers{
        for num in 1...n{
            print("*", terminator: "")
        }
        print()
    }
}
histogram_generator(numbers: [3,5,1,4])

/*
 Takes an array of integers and generates a histogram using stars (*).

 Example Input:
 let numbers = [3, 5, 1, 4]

 Output:
 ***
 *****
 *
 ****

*/

/*
let numbers = [3,5,1,4]

for n in numbers{
    for num in 1...n{
        print("*", terminator: "")
    }
    print()
}
*/
