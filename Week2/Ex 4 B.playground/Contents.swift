import UIKit

//  Create a program that safely converts a String to a Double and checks if the conversion was successful.

var price: String = "20.5"

let beforeTypeOfPrice = type(of: price)
print("Before convert to Double the Type is:", beforeTypeOfPrice)

if let priceAsDouble = Double(price){
    print("The apple price is ", priceAsDouble, ".")
    
    let typeOfDouble = type(of: priceAsDouble)
    print("The type of Price is: ",typeOfDouble)
}
else{
    print("Invalid number format")
}
