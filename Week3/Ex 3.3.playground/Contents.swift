import UIKit

//var shippingAddress:String? = nil
var shippingAddress:String? = "Petaling Jaya"

let ChckShippingAddress = shippingAddress != nil ? "Shippiht to: [\(shippingAddress!)]":"No shipping address provided"

print(ChckShippingAddress)
