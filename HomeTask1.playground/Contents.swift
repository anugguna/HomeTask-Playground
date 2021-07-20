import UIKit
//Lesson 1
/*
 Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

let firstString = "I'm learning"
let secondString = "swift"
print("\(firstString) \(secondString) !!!")

/*
 Exercise 2.1
Create a constant named myAge and assign it the value of your age.
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

let myAge: Int = 42
var myAgeInTenYears: Int = myAge + 10
let daysInYear: Float = 365.25
var daysPassed: Float = Float(myAgeInTenYears) * daysInYear
/*I have done it the way I have been told to, but I have to mention this is no a true value,
if speaking about the number of days that have passed since the year I have been born.
So I will declare another variable named daysActuallyPassed and use it to make the sentence true.
*/
var daysActuallyPassed: Float = Float(myAge) * daysInYear
print("My age is \(myAge) years. In 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysActuallyPassed) days.")

/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

var cath1: Double = 6
var cath2: Double = 8
var cath1sqr: Double = cath1 * cath1
var cath2sqr: Double = cath2 * cath2
var sum: Double = cath1sqr + cath2sqr
var hypot:Double = sqrt(sum)
var area: Double = (cath1 * cath2) / 2
var perimeter:Double = cath1 + cath2 + hypot
