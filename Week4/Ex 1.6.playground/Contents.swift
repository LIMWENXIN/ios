import UIKit

/*
 Create a function that prints a half diamond pattern of stars using nested for loops.

 *
 **
 ***
 ****
 ***
 **
 *

 Hint:
 You can break it down into two parts:
 Top Half: Increasing stars from 1 to 4.
 Bottom Half: Decreasing stars from 3 back to 1.

*/
var reversed = ""
var num = 4

for a in 1...num{
    for b in 1...a{
        print("*", terminator: "")
    }
    print()
}
var n = num-1
for c in 1...n{
    for d in 1...n{
        print("*", terminator: "")
    }
    print()
    n -= 1
}

