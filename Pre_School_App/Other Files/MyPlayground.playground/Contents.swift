//: Playground - noun: a place where people can play

import UIKit

var MyNumbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

var Num1 = 0
var Num2 = 0
var total = 0


Num1 = MyNumbers[Int(arc4random_uniform(9))]
Num2 = MyNumbers[Int(arc4random_uniform(9))]

total = Num1 + Num2

while total > 9 {
    Num1 = MyNumbers[Int(arc4random_uniform(9))]
    Num2 = MyNumbers[Int(arc4random_uniform(9))]
    
    total = Num1 + Num2
}


var Num1AndNum2 = "\(Num1) + \(Num2) = "
