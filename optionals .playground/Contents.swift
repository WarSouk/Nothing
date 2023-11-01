import Foundation


func multiplyByTwo( _ value: Int? =  nil) -> Int {
    if let value{
        return value * 2
    }else{
        return 0
    }
}

multiplyByTwo()
multiplyByTwo(nil)
multiplyByTwo(9)


let age: Int? = nil
if age != nil{
    "Age is there! How odd"
}else{
    "Age is nil. Correct"
}

if let age{
    "Age is there, how odd! its value is \(age)"
}else{
    "age is not presented. As expected"
}


func checkAge() {
    guard age != nil else{
        "age is nil as expected"
        return
    }
    
    guard age != nil else{
        "age is nil as expected"
        return
    }
    "age is not nil here. Strange"
}
checkAge()

let age2: Int? = 0
func checkAge2() {
    guard let age2 else {
        "age is nil. how strange"
        return
    }
    "Age 2 is not nil as expected. Value = \(age2)"
}
checkAge2()

switch age{
case .none:
    "age has no value as expected"
    break
case let .some(value):
    "Age has the value of \(value)"
    break
}

if age2 == 0 {
    "age2 is 0 as expected, and it's not nil"
}else {
    "Age2 is not 0. How strange"
}


if age2 == .some(0) {
    "age2 is 0 as expected, and it's not nil"
}else {
    "Age2 is not 0. How strange"
}

struct Person {
    let name: String
    let address: Address?
    struct Address{
        let firstLine: String?
    }
}

let foo: Person = Person(name: "Foo", address: nil)

if let fooFirstAdressLine = foo.address?.firstLine{
    fooFirstAdressLine
}else {
    "foo doesnt have an adress with first line. as expected"
}


if let fooAddress = foo.address,
   let firstLine = fooAddress.firstLine {
       fooAddress
       firstLine
   }


let bar: Person? = Person(name: "Bar", address: Person.Address(firstLine: nil))

if bar?.name == "Bar", bar?.address?.firstLine == nil {
    "Bar's name is bar and has no first line of adress"
}else {
    "seems like smth isnt working right"
}

let baz: Person? = Person(name: "Baz", address: Person.Address(firstLine: "Baz first line"))

switch baz?.address?.firstLine{
case let .some(firstLine) where firstLine.starts(with: "Baz"): "Baz first adress line = \(firstLine)"
case let .some(firstLine):
    "Baz first adress line that didnt match the previous case "
    firstLine
case . none:
    "Baz first address is nil"
}

func getFullName(firstName: String, lastName: String?) -> String? {
    if let lastName {
        return "\(firstName) \(lastName)"
    }else {
        return nil
    }
}

getFullName(firstName: "foo", lastName: nil)
getFullName(firstName: "foo", lastName: "bar")


func getFullName2(firstName: String, lastName: String?) -> String? {
    guard let lastName else {
        return nil
    }
        return "\(firstName) \(lastName)"
}



