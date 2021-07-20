import UIKit

//Lesson 5
/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

import Foundation
class Orange {
    var color = ""
    var taste = ""
    var weight = 0.0
    init(color:String, taste:String, weight:Double){
        self.color = color
        self.taste = taste
        self.weight = weight
    }
}
let someOrange = Orange(color:"orange", taste: "sweet", weight: 0.66)
let anotherOrange = Orange(color:"light orange", taste: "sour", weight: 0.2)
print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste.")
print("My \(anotherOrange.weight) kg orange has \(anotherOrange.color) color and \(anotherOrange.taste) taste.")
//AS well could be done like below, using Default Initialiser
class Orange {
    var color = ""
    var taste = ""
    var weight = 0.0
}
let someOrange = Orange()
    someOrange.color = "orange"
    someOrange.taste = "sweet"
    someOrange.weight = 0.66
print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")

/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Figure {
    var height: Float = 0.0
    var width: Float = 0.0
    var radius: Float = 0.0
    var square: Float = 0.0
    var perimeter: Float = 0.0
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    func squareOfFigure() -> Float {
        return(height * width)
    }
    func perimeterOfFigure() -> Float {
        return(2 * height + 2 * width)
    }
}
class Rectangle: Figure {
    override func squareOfFigure() -> Float {
        let squareOfFigure = (height * width)
        return squareOfFigure
    }
    override func perimeterOfFigure() -> Float {
        let perimeterOfFigure = (2 * height + 2 * width)
        return perimeterOfFigure
    }
    func description() -> String {
        return("Rectangle area is: \(squareOfFigure()), and perimeter of figure is: \(perimeterOfFigure())")
        }
}
let myRectangle = Rectangle (height: 6, width: 15)
print(myRectangle.description())
