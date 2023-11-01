import Foundation

func noArgumentsAndNoReturnValue(){
    "I dont know what i'm doing"
}
noArgumentsAndNoReturnValue()


func plusTwo(value: Int){
    let newValue = value + 2
}
plusTwo(value: 20)


func newPlusTwo(value: Int) -> Int {
    value + 2
}
newPlusTwo(value: 30)

func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}
let customAdded = customAdd(value1: 10, value2: 20)


func customMinus (_ rhs: Int, _ lhs: Int) -> Int { lhs - rhs }

let customSubstracted = customMinus(20,10)

//func customMinus (rhs: Int, lhs: Int) -> Int { lhs - rhs }
//
//let customSubstracted = customMinus(rhs: 20, lhs: 10)


// that works only cause i do this in playground, so in pure swift code i neeed to whatever i need to do(sry im a newbie here, dunno much :) )
customAdd(value1: 20, value2: 30)

@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int) -> Int{
        lhs + rhs
    }

myCustomAdd(20,30)


func doSmthComplicated(with value: Int) -> Int{
    func mainLogic(value: Int) -> Int{
        value + 2
    }
    return mainLogic(value: value + 3)
}
doSmthComplicated(with: 30)


func getFullName(firstName: String = "Sigma", lastName: String = "Male") -> String {"\(firstName) \(lastName)"}

getFullName()
getFullName(firstName: "Omejka")
getFullName(lastName: "dog")
getFullName(firstName: "Negr", lastName: "dolbaeb")
