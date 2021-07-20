import UIKit

//Lesson3
/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
import Foundation
let startingAmountOfMoney: Double = 500000
let numberOfYears: Double = 5
let numberOfMonthsInYear: Double = 12
let totalNumberOfMonths: Double = numberOfYears * numberOfMonthsInYear
let rate: Double = 0.03
let monthsRate = rate / 12
var currentAmountOfMoney = startingAmountOfMoney
let printableNumberOfYears = Int(numberOfYears)

for i in 1...Int(totalNumberOfMonths) {
    currentAmountOfMoney = startingAmountOfMoney + startingAmountOfMoney * monthsRate
}
let income: Double = currentAmountOfMoney - startingAmountOfMoney
print("If putting \(startingAmountOfMoney) Eur into a deposite wit a rate \(rate), the amount of income after \(printableNumberOfYears) years will be \(income) Eur. My total deposit will be \(currentAmountOfMoney) Eur !")
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

import Foundation
let arrayOfNumbers = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
var evenNumber = 0
print("My even numbers are:")
for number in arrayOfNumbers {
    if number % 2 == 0 {
        evenNumber = number
    print(evenNumber)
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

import Foundation
var counter = 0
    while true {
    var randomValue = Int.random(in: 1...1000)
    randomValue != 5
    counter += 1
    if randomValue == 5 {
         print("Number 5 will be after \(counter) shuffles")
         break
         }
}
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night bug slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

import Foundation
let high = 10
var actualHigh = 0
let day = 2
let night = -1
var counter = 0
while (true) {
    actualHigh < high
    actualHigh = actualHigh + day
    counter += 1
    if actualHigh == high {
    break
    }
     else {
        actualHigh = actualHigh + night}
}
print("Bug will spend \(counter) days to reach the top of the post")
