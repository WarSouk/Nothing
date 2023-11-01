import Foundation

struct Person: Equatable{
    let id: String
    let name: String
}
let foo1 = Person(id: "1", name:"Foo")
let foo2 = Person(id: "1", name: "Bar")

if foo1 == foo2 {
    "They are equal"
}else{
    "They are not equal"
}

extension Person{
    static func == (
        lhs: Self,
        rhs: Self) -> Bool{
            lhs.id == rhs.id // this code makes foo1 and foo2 equal by equaling them only by id, not the name and id
        }
}

enum AnimalType: Equatable{
    case dog(breed: String)
    case cat(breed: String)
}
//let dog1 = AnimalType.dog(breed: "Labradoodle")
//let dog2 = AnimalType.dog(breed: "Labradoodle")
//
//if dog1 == dog2{
//    "They are equal"
//}else{
//    "they are not"
//}

//extension AnimalType:Equatable{
//    static func ==(
//    lhs: Self,
//    rhs: Self) -> Bool{
//        switch(lhs,rhs){
//        case let(.dog(lhsBreed), .dog(rhsBreed)),
//        let(.cat(lhsBreed), .cat(rhsBreed)):  // u can delete it in case of using code that presented below, just say that anymal type is Equatable in enum of AT
//           return lhsBreed == rhsBreed
//        default:
//            return false
//        }
//        
//    }
//}

struct Animal: Equatable{
    let name: String
    let type: AnimalType
    
    static func == (
        lhs: Self,
        rhs: Self) -> Bool{
            lhs.type == rhs.type
        }
}
let cat1 = Animal(name: "Whiskers", type: .cat(breed: "Street cat"))
let cat2 = Animal(name: "Whoosh", type: .cat(breed: "Street cat"))

if cat1 == cat2{
    "They are equal becasue of their type"
}else{
    "they are not equal"
}


//hashable

struct House: Hashable{
    let number: Int
    let numberOfBedrooms: Int
}

let house1 = House(number: 123, numberOfBedrooms: 2)
house1.hashValue

let house2 = House(number: 123, numberOfBedrooms: 3) // if you will change the int to the same you will see the exact same hash on both of them
house2.hashValue


let houses = Set([house1, house2])
houses.count


struct NumberedHouse: Hashable{
    let number: Int
    let numberOfBedrooms:Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    static func ==(
        lhs: Self,
        rhs: Self) -> Bool{
            lhs.number == rhs.number
        }
}
let house3 = NumberedHouse(number: 123, numberOfBedrooms: 2)
let house4 = NumberedHouse(number: 123, numberOfBedrooms: 3)

let houses3And4 = Set([house3, house4]) // house4 can not be put in the set simply because there is already house 3 with the same hash value
houses3And4.count
houses3And4.first!.numberOfBedrooms
house3.hashValue // casue of the hash func is takes only numberofhouse in a count
house4.hashValue
house3.number.hashValue
house4.number.hashValue


enum CarPart{ // if u creating parts in the enum its parts are already hashable and Equatable by default
    case roof
    case tire
    case trunk
}

let uniqueParts: Set<CarPart> = [.roof,.tire,.roof,.trunk] //doesnt containt 2 roofs

enum HouseType: Hashable{
    case bigHouse(NumberedHouse)
    case smallHouse(NumberedHouse)
}

let bigHouse1 = HouseType.bigHouse(NumberedHouse(number: 1, numberOfBedrooms: 1))
let bigHouse2 = HouseType.bigHouse(NumberedHouse(number: 1, numberOfBedrooms: 1))
let smallHouse1 = HouseType.smallHouse(NumberedHouse(number: 1, numberOfBedrooms: 1))

let allHouses: Set<HouseType> = [ bigHouse1, bigHouse2, smallHouse1] // bighouse2 and 1 are considered as the same by hash value, but not the small cause of .small
allHouses.first
for value in allHouses{
//    print(value)
}

