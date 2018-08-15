//: Playground - noun: a place where people can play

import UIKit

typealias dollars = UInt16
let title = "Welcome."
var portion: dollars
var name: String
var isOwed: Bool
var (paid, share): (dollars, dollars)

var total: dollars? = 0
portion = 0
name = "Enter Name"
(paid, share) = (2,15)

total = 45
portion = share - paid
name = "Aanya"

isOwed = true

if let total = total {
    if isOwed {
        print(title)
        print("Of the total $\(total), \(name) owes $\(portion) dollars.")
        print("Because of the $\(share), \(name) has already paid $\(paid).")
    } else {
        print("No one owes anything")
    }
}
