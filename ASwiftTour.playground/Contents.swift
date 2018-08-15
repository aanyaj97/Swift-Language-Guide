//: Playground - noun: a place where people can play
// Intro: A Swift Tour
import UIKit

let four: Float = 4
let five: Float = 5
let snacks = "I have \(four + five) snacks." // "\()" converts to string

var snacksList = ["chips", "juice", "granola"]
snacksList[1] = "tortilla chips"

var snacksSort = [
    "Joe":"pretzels",
    "Frank":"chocolate",
]

snacksSort["Cara"] = "ice cream" // you can index dictionaries by the name of the leading term

let emptyArray = [String]()
let emptyDict = [String: Float]()

let rank = [5,5,4,3,2,1,5,3]
var recallScore = 0

for i in rank {
    if i < 3 {
        recallScore += 1
    } else {
        recallScore -= 1
    }
}
print(recallScore)

var optionalString: String? = "Hello"
print(optionalString == nil) //"==" is a boolean test

var optionalName: String? = "Aaanya"
var greeting = "Hello!"
if let name = optionalName{
    greeting = "hello, \(name)!"
}



