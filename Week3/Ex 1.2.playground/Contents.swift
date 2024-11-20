import UIKit

//var hour = 7
//var hour = 15
//var hour = 19
//var hour = 3
var hour = 23

if hour >= 5 && hour <= 11{
    print("Good morning!, Now the time is \(hour):00 .")
}
else if hour >= 12 && hour <= 17{
    print("Good afternoon!, Now the time is \(hour):00 .")
}
else if hour >= 18 && hour <= 21{
    print("Good evening!, Now the time is \(hour):00 ..")
}
else{
    print("Good night!, Now the time is \(hour):00 .")
}
