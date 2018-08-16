//: Playground - noun: a place where people can play

import UIKit

//1: For...in loops//

//a. Use Stride function to create interval steps
var fiveSum = 0
for i in stride(from: 1, to: 100, by: 5) {
    fiveSum += i
}
print(fiveSum)

//2: While loops

//a. Model of Snakes and Ladders game

let squares = 100
var board = [Int] (repeating: 0, count: squares + 1)
//array of board which is dependent on the final number of squares

board[02] = +05 ; board[15] = +13 ; board[33] = +16 ; board[59] = +20 ; board[72] = +03 ; board[86] = +03 ;
board[16] = -14; board[39] = -23 ; board[47] = -07 ; board[62] = -32 ; board[81] = -12 ; board[98] = -29 ;
//setting up ladders and snakes

var position = 0

while position < squares {
    let dice = Int(arc4random_uniform(7))
    position += dice
    if position < board.count{
        position += board[position]
    }
}
print("Game Over")

//3: Repeat-While loops - different to WHile loops as this will run though code first before checking while condition

//a. Altered model of Snakes and Ladders game

let squaresTwo = 100
var boardTwo = [Int] (repeating: 0, count: squaresTwo + 1)
//array of board which is dependent on the final number of squares

boardTwo[02] = +05 ; boardTwo[15] = +13 ; boardTwo[33] = +16 ; boardTwo[59] = +20 ; boardTwo[72] = +03 ; boardTwo[86] = +03 ;
//ladders
boardTwo[16] = -14; boardTwo[39] = -23 ; boardTwo[47] = -07 ; boardTwo[62] = -32 ; boardTwo[81] = -12 ; boardTwo[98] = -29;
//snakes
//setting up ladders and snakes

var positionTwo = 0

repeat {
    positionTwo += boardTwo[positionTwo]
    let dice = Int(arc4random_uniform(7))
    positionTwo += dice
} while positionTwo < squaresTwo

print("Game Over")

//4: If statements

//a: Simple example
var height = 45

if height < 36 {
    print("You are short")
} else if height >= 36 && height <= 45 {
    print("You are of average height")
} else {
    print("you are tall")
}

//5: Switch statements

//a: Simple string example using time zones

let timeZone = "GMT -07"

switch timeZone {
case "GMT +00":
    print("You are on GMT)")
case "GMT -05":
    print("You are on Eastern Time")
case "GMT -06":
    print("You are on Central Time")
case "GMT -07":
    print("You are on Mountain Time")
case "GMT -08":
    print("You are on Pacific Time")
default:
    print("I cannot find your time zone")
}
//switch in Swift finishes execution as soon as first condition is met (unlike if statement or switch in C)

//b: Simple interval example using prices

let price = 25.00
let descriptor: String
switch price {
case 0.00:
    descriptor = "free"
case 0.01..<5.00:
    descriptor = "very cheap"
case 5.00..<15.00:
    descriptor = "cheap"
case 15.00..<30.00:
    descriptor = "mdoerately priced"
case 30.00..<60.00:
    descriptor = "expensive"
default:
    descriptor = "cannot be determined"
}
print("The item is \(descriptor).")

//c: Simple tuple example using coordinate axes

let point = (0.00,-6.54)
let quadrant: String
switch point {
case (0.00,0.00):
    quadrant = "origin"
case (0.00...Double.infinity,0.00...Double.infinity):
    quadrant = "first quadrant"
case (-Double.infinity...0.00,0.00...Double.infinity):
    quadrant = "fecond Quadrant"
case (-Double.infinity...0.00,-Double.infinity...0.00):
    quadrant = "third Quadrant"
case (0.00...Double.infinity,-Double.infinity...0.00):
    quadrant = "fourth Quadrant"
default:
    quadrant = "unkown quadrant"
}
print("The point \(point) is in the \(quadrant).")

//d: Simple value binding example
let pointTwo = (3,0)
switch pointTwo {
case (let x, 0):
    print("The point is on the x-axis with value of \(x)")
case (0, let y):
    print("The point is on the y-axis with value of \(y)")
case let (x,y):
    print("The point is at (\(x),\(y))")
}

//e: Using where to check for additional conditions
let pointThree = (4,4)
switch pointThree {
case let (x,y) where x == y:
    print ("(\(x),\(y)) is on the line x = y")
case let (x,y) where x == -y:
    print ("(\(x),\(y)) is on the line x = -y")
default:
    print("\(pointThree) is on neither line")
}

//f: Compound cases + Value Binding

let pointFour = (0,3)
switch pointFour {
case (let distance, 0), (0, let distance):
    print("The point is on an axis at a distance \(distance) from the origin")
case let (xDistance, yDistance):
    let dist = sqrt(Double(xDistance^2 + yDistance^2))
    print("The point is not on an axis but is at distance \(dist) from the origin")
}

//6: Control Transfer Statements

//a: continue - tells a loop to stop and start the next interation of the loop

let message = "hello it is me"
var secretMessage = ""

let letterRemove: [Character] = ["a", "b", "d", "e", "h", "s", " "]
for character in message {
    if letterRemove.contains(character) {
        continue
    } else {
        secretMessage.append(character)
    }
}
print(secretMessage)
//note that in this example instead of "removing" we are writing approved letters to a new var

//b: break - ends the execution of an entire statement in either switch or loop when you want to stop iteration early

let number = 6
var range: String?

switch number {
case 1,2,3,4,5:
    range = "less than or equal to 5"
case 6,7,8,9,10:
    range = "greater than 5"
default:
    break
}

if let range = range {
    print("The number is \(range)")
} else {
    print("The number \(number) is out of the range")
}

//c: fallthrough - since switch in Swift ends at the first match, if you want to continue like in C, use this

let numberTwo = 4
var multiples = "The number \(numberTwo) is"

switch numberTwo {
case 2,4,6,8:
    multiples += " a multiple of two"
    fallthrough
case 4,8:
    multiples += " and a multiple of four."
default:
    multiples += "unkown"
}
print(multiples)

//7: Labeled Statements - mark a loop or condition with a name

//a: Modified Snakes and Ladders

let squaresThree = 100
var boardThree = [Int] (repeating: 0, count: squares + 1)
//array of board which is dependent on the final number of squares

boardThree[02] = +05 ; boardThree[15] = +13 ; boardThree[33] = +16 ; boardThree[59] = +20 ; boardThree[72] = +03 ; boardThree[86] = +03 ;
boardThree[16] = -14; boardThree[39] = -23 ; boardThree[47] = -07 ; boardThree[62] = -32 ; boardThree[81] = -12 ; boardThree[98] = -29 ;
//setting up ladders and snakes

var positionThree = 0
var diceThree = 0

gameLööp: while positionThree != squaresThree {
    diceThree += 1
    if diceThree == 7 {diceThree = 1}
    
    switch positionThree + diceThree {
    case squaresThree:
        break gameLööp
    case let newSquare where newSquare > squaresThree:
        continue gameLööp
    default:
        positionThree += diceThree
        positionThree += boardThree[positionThree]
    }
}
print("Game Over!!")

//8: Early Exit - like an if statement, but always has an else clause

//a: Guard-else example

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "Aanya", "location": "Chicago"])

//if guard statement is met then whatever comes after the closing brace is executed, otherwise the else clause is executed. The else clause needs to start an exit statement (return, break etc)

//9: API Availability - use if #available ... else










