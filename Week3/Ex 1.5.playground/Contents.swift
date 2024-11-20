import UIKit

var username = "LIM WEN XIN"
var password = "abc123"

//var input_username = "LIM WEN XIN"
var input_username = "LWX"
//var input_password = "abc123"
var input_password = "aaa"

if (input_username == username && input_password == password) {
    print("Hello \(username)! Login successful!!!")
}
else if (input_username != username && input_password == password){
    print("Invalid username!")
}
else if (input_username == username && input_password != password){
    print("Invalid password!")
}
else{
    print("Invalid username & password!")
}
