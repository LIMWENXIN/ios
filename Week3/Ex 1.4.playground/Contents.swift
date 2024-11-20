import UIKit

//var age = 2
//var age = 9
//var age = 17
var age = 79

if age < 5{
    print("Your age is \(age) years old. You are Free entry.")
}
else if age >= 5 && age <= 12{
    print("Your age is \(age) years old. Your Ticket price is $10.")
}
else if age >= 13 && age <= 64{
    print("Your age is \(age) years old. Your Ticket price is $15.")
}
else{
    print("Your age is \(age) years old. Your Ticket price is $8.")
}
