//: Playground - noun: a place where people can play

import UIKit

//1: Defining and Calling Functions

let date = Date()
let calendar = Calendar.current
let hour = calendar.component(.hour, from: date)

func hello(name: String, timeOfDay: Int) -> String {
    var hello = ""
    switch timeOfDay {
    case let t where t <= 4 || t > 21 :
        hello = "Goodnight, " + name + "."
    case let t where t > 4 && t < 12:
        hello = "Good morning, " + name + "."
    case let t where t >= 12 && t < 17:
        hello = "Good afternoon, " + name + "."
    case let t where t >= 17 && t < 21:
        hello = "Good evening, " + name + "."
    default:
        hello = "Hello, " + name + "."
    }
    
    return hello
}

print(hello(name: "Aanya", timeOfDay: hour))

//2: Function Parameters and Return Values

//a: function without parameters

func tenPlusTwo() -> Int {
    return 10 + 2
}

print(tenPlusTwo())

//b: function with multiple parameters

func helloTwo(name: String, ifAwake: Bool, timeOfDay: Int) -> String {
    if ifAwake == true {
        return hello(name: name, timeOfDay: timeOfDay)
    } else {
        return "Good morning, " + name
    }
}

print(helloTwo(name: "Aanya", ifAwake: false, timeOfDay: hour))

//c: function without return value

func helloThree(name: String) {
    print ("Hello \(name)")
}

helloThree(name: "Aanya")

//d: function with multiple return values

func minMax(prices: [Double]) -> (min: Double, max: Double) {
    var min = prices[0]
    var max = prices[1]
    
    for i in prices[1..<prices.count] {
        if i < min {
            min = i
        } else if i > max {
            max = i
        }
    }
    return (min,max)
}

//3: Optional Tuple Return Types



