import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "IM OLDER THAN U"
} else  if myAge < yourAge {
    "im younger than you"
} else {
    "we are the same age m8"
}

let mymothersage = myAge + 20
let doublemyage = myAge * 2


/// 1. unary prefix
let foo = true ///!true if you want the opposite
/// 2. unary postfix
let name = Optional("WarSouk")
type(of: name)
let UnaryPostfix = name!
type(of: UnaryPostfix)
/// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

//turnery operators
let age = 13
//let message: String
//if age >= 18{
//    message = "U are an adult"
//}else {
//    message = "u are not an adult"
//}

//let message = CONDITION
//? VALUE IF CONDITION IS MET
//: VALUE IF CONDITION IS NOT MET
let message = age >= 18
? "you are an adult"
: "u baby m8"
