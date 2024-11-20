import UIKit

let username = "LIM WEN XIN"
let password = "abc123"

var input_username = "LIM WEN XIN"
//var input_username = "LWX"
//var input_password = "abc123"
var input_password = "aaa"

if (input_username == username){
    if(input_password == password) {
        print("Hello \(username)! Login successful!!!")
    }else{
        print("Invalid password!")
    }
}else{
    print("Invalid username!")
}
