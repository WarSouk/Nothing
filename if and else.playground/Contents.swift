import Foundation

let myName = "Maxim"
let myAge = 20
let yourName = "Sigma"
let yourAge = 54

if myName == "maxim"{
    "Your name is \(myName)"
}else{
    "Oops, i guessed it wrong"
}

if myName == "Maxim"{
    "Now i guessed it correctly"
} else if myName == "Sigma"{
    "Are you Sigma?"
}else {
    "ok mate u win"
}

if "Maxim" == myName{
    "bro u mad "
}


if myName == "Maxim" && myAge == 21 {
    "u 21 and u maxim"
}else if myAge == 20{
    "oh, your age is 20"
}else {
    "i fucked up as much as it possible"
}


if myAge == 20 || myName == "Sigma"{
    "either age is 20, name is Sigma or both"
} else if myAge == 20 || myName == "Maxim"{
    "bro it doesnt work like that"
}


if myName == "Maxim"
    && myAge == 22
    && yourName == "Sigma"
    || yourAge == 54{
    "My name is Maxim, im 22 and your name is Sigma or you just simply 54"
}


if (myName == "Maxim"
    && myAge == 22)
    &&
    (yourName == "Sigma"
     || yourAge == 54){
    "My name is Maxim, im 22 and your name is Sigma or you are 54 "
}else {
    "hm that didnt work that well"
}
