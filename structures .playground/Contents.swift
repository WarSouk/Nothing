import Foundation

struct Person {
    let name: String
    let age : Int
}

let foo = Person(name: "Foo", age: 20)


foo.name
foo.age


struct CommodoreComputer {
    let name : String
    let manufacturer:  String
    init(name: String) {
        self.name = name
        self.manufacturer = "Commodore"
    }
}

//struct CommodoreComputer {
//    let name : String
//    let manufacturer:  "Commodore"
//}

let c64 = CommodoreComputer(name: "C64")
c64.name
c64.manufacturer

//let c64 = CommodoreComputer(name: "my Commodore", manufacturer: "Comodore")
//let c128 = CommodoreComputer(name: "my Commodore 128", manufacturer: "Comodore")

struct Person2{
    let firstName: String
    let lastName: String
    var fullName: String{
        "\(firstName) \(lastName)"
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")
fooBar.firstName
fooBar.lastName
fooBar.fullName

struct Car{
    var currentSpeed: Int
    mutating func drive(speed:Int){
        "Driving"
        currentSpeed = speed
    }
}

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)

var mutableCar = Car(currentSpeed: 10)
let copy = mutableCar //var also works
mutableCar.currentSpeed
mutableCar.drive(speed: 30)
mutableCar.currentSpeed
copy.currentSpeed
//В общем, чтобы не забыть, структуры в свифте это значения и в данном случае приравнивая mutableCar and copy мы так же копируем значение car(currentSpeed:10), но эти 2 переменные своими значениями никак не связаны(В смысле того что меняя значение одной мы не меняем другую, что в принципе довольно логично)

struct LivingThing{
    init(){
        "i am a living thing"
    }
}
//struct Animal: LivingThing{
//                                       you cant inherit struc in struc in swift
//}

struct Bike{
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}
let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)
let bike2 = bike1.copy(currentSpeed: 30) //Есть еще варик просто заменить на вар внутри struc и var bike2 но там говорят пизже
bike2.currentSpeed
bike1.currentSpeed
//mutableCar.drive(speed: 30)
//mutableCar.currentSpeed
