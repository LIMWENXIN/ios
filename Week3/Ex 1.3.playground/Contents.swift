import UIKit

var year = 2024
//var year = 2023


if year % 4 == 0  && (year % 100 != 0 || year % 400 == 0) {
    print("This year is \(year), Is Leap Year.")
}
else{
    print("This year is \(year), Is Not a Leap Year.")
}
