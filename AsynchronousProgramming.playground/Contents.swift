import Foundation
import PlaygroundSupport
import _Concurrency


PlaygroundPage.current.needsIndefiniteExecution = true

func calculateFullName(
    firstName: String,
    lastName: String
)async -> String{
    try? await Task.sleep(for: .seconds(1))
    return "\(firstName) \(lastName))"
}

Task{
    let result1 = await calculateFullName(firstName: "Foo", lastName: "Bar")
    async let result2 = calculateFullName(firstName: "Foo", lastName: "Bar")
    await result2
}

// DOESNT WORK SUKA BLYAT
