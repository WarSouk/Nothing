import Foundation

/// DOGSHIT CODE

//struct Animal {
//    let type: String
//    init(type: String) {
//        if type == "Rabit" || type == "Dog" || type == "Cat"{
//            self.type = type
//        } else {
//            preconditionFailure()
//        }
//    }
//}
//
//Animal(type: "Bike")


enum Animals{
    case dog, cat, rabbit, hadgehog
//    case dog
//    case cat                           The same but the first one looks better
//    case rabbit
}

let cat = Animals.cat
cat


if cat == Animals.cat {
    "it is a cat"
}else if cat == Animals.dog{
    "this is a dog"
}else{
    "this is smth else "
}

//switch cat {
//case .dog:
//    "this is a dog"
//    break
//case .cat:
//    "this is a cat"
//    break
//case .rabbit:
//    "this is a rabbit"
//    break
//}


//func describeAnimal(_ animal: Animals){
//    switch animal{
//    case .dog:
//        "this is a dog"
//        break
//    case .cat:
//        "this is a cat"
//        break
//    default:               /*not the best IDEA*/
//        "This is smth else"
//    }
//}
//describeAnimal(Animals.rabbit)

switch cat{
case .dog:
    "this is a dog"
    break
case .cat:
    "this is a cat"
    break
case .rabbit:
    "this is a rabbit"
    break
case .hadgehog:
    "this is a headgehog"
    break
}



enum Shortcut{
    case fileOrFolder(path:URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path:URL(string: "https://Apple.com")!
)

//switch wwwApple{
//case .fileOrFolder(
//    path: let path,
//    name: let name
//):
//    path
//    name
//    break
//case .wwwUrl(
//    path: let path
//):
//    path
//    break
//case .song(
//    artist: let artist,
//    songName: let songName
//):
//    artist
//    songName
//    break
//}



//switch wwwApple{
//case .fileOrFolder(
//    let path,
//    let name
//):
//    path
//    name
//    break
//case .wwwUrl(
//    let path
//):
//    path
//    break
//case .song(
//    let artist,
//    let songName
//):
//    artist
//    songName
//    break
//}



switch wwwApple{
case let .fileOrFolder(
   path,
    name
):
    path
    name
    break
case let .wwwUrl(
    path
):
    path
    break
case let .song(
    artist,
    songName
):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}


let withoutYou = Shortcut.song(artist: "Symphony X", songName: "Without You")

if case let .song(_, songName) = withoutYou{    // in case if you want to ignore the artist, if u dont want to type artist instead of _ and { artist ...
    songName
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String{
        switch self {
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            return manufacturer
        }
    }
}


    //func getManufacturer(from Vehicle: Vehicle) -> String{
    //    switch Vehicle {
    //    case let .car(manufacturer, _):
    //        return manufacturer
    //    case let .bike(manufacturer, _):
    //        return manufacturer
    //    }
    //}




let car = Vehicle.car(manufacturer: "Tesla", model: "X")

//switch car{
//case let .car(manufacturer, _):
//    manufacturer
//    break
//case let .bike(manufacturer, _):
//    manufacturer
//    break
//}

car.manufacturer
let bike = Vehicle.bike(manufacturer: "HD", yearMade: 2001)

//switch bike {
//case let .car(manufacturer, _):
//    manufacturer
//    break
//case let .bike(manufacturer, _):
//    manufacturer
//    break
//}
bike.manufacturer


enum FamilyMember: String {
    case father = "dad"
    case mother = "mom"
    case brother = "bro"
    case sister = "sis"
}

FamilyMember.father.rawValue
FamilyMember.mother.rawValue

enum FavoriteEmoji: String, CaseIterable{
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

FavoriteEmoji.blush.rawValue

if let blush =  FavoriteEmoji(rawValue: "😊"){
    "Found the blush emoji"
    blush
}else {
    "this emoji doesnt exist"
}


if let snow =  FavoriteEmoji(rawValue: "❄️"){
    "Snow exist's really>"
    snow
}else {
    "As expected, there is no snow in our enum"
}


enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}

var myHeight = Height.medium // let doesnt work which is obvious
myHeight.makeLong()
myHeight

//extremly rare 

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int,Int)
    case freeHand(IntOperation)
    
    func calculateResults(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self{
        case let .add(lhs,rhs):
            return lhs + rhs
        case let . subtract(lhs, rhs):
            return lhs - rhs
        case let .freeHand(operation):
            return calculateResults(of: operation)
        }
        
    }
}
let freeHand = IntOperation.freeHand(.add(2, 4))
freeHand.calculateResults()
