import Foundation

//func add(_ lhs: Int, _ rhs: Int) -> Int{ lhs + rhs } ///garbage no clue why i even wrote this

let add: (Int, Int) -> Int
= { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}
add(20,30)


func customAdd(
    _ lhs: Int,
    _ rhs: Int,
using function: (Int, Int) -> Int // using "function" - "function" is just a name, u can call it whatever you like, it is just an example
) -> Int {
    function(lhs, rhs)
}

// this is actually not that ban since compiller doesnt waste time on thinking about data type, so mb it is even better

//customAdd(
//    20,
//    30) { (lhs: Int, rhs: Int) -> Int in
//        lhs + rhs
//    }

customAdd(
    20,
    30) { (lhs, rhs) in
        lhs + rhs
    }

customAdd(20,30) {$0 + $1} /// (o_o)
    

//let	ages = [30,20,19,40]
//ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
//    lhs < rhs
//})


let ages = [30,20,19,40]
ages.sorted(by: >)


func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    function(lhs, rhs)
}

customAdd2(
    using: { $0 + $1 + 10},
    20, 30)

func add10To(_ value: Int) -> Int {
    value + 10
}

func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20, using: add20To(_:)
    )
