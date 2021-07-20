import UIKit
//Lesson 4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

import Foundation
let myTeam = "Girls"
var resultsOfGames = [String: String]()
resultsOfGames["Brooklyn Nets"] = "99:89"
resultsOfGames["Brooklyn Nets"] = "109:99"
resultsOfGames["Dallas Mavericks"] = "87:93"
resultsOfGames["Dallas Mavericks"] = "104:97"
resultsOfGames["Washington Wizards"] = "117:112"
resultsOfGames["Washington Wizards"] = "107:122"

for (teamName, score) in resultsOfGames {
print("\(myTeam) against \(teamName) scored \(score)")
}
/*Tried to do the way you gave us as an example, but if teamName repeats,
Dictionary redeclairs it, so it prints out every teamName only once,
followed by the second score.
*/

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let arrayOfBancnotes = [Int]()
let howMenyOfEachBancnoteType = 1
var total: Int = 0
func countCashInTheWallet(_ numbers: Int ...) -> Int {
    for number in numbers {
        total += number * howMenyOfEachBancnoteType
    }
    return total
}
countCashInTheWallet(5,10,20,50,100,200,500)
print("I have \(total) Eur in my wallet.")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
/*
 Didnt manage to do it by myself, the sript below is taken from discussing hometask:
func isEvenNumber(number:Int) -> Bool {
    var status = true
    if number % 2 == 0{
        status = true
    }else{
        status = false
    }
return status
}
*/
//Or it can be done as simple as:
let number = 23

func isEvenNumber(number:Int) -> Bool {
return number % 2 == 0
}
isEvenNumber(number: 2)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

var a = 1
var z = 100
func createArray(first: Int, last: Int) -> [Int] {
    var currentNumber = a - 1
    var createdNumbers: [Int] = []
        while true {
            currentNumber <= z
            currentNumber = currentNumber + 1
            createdNumbers.append(currentNumber)
            if currentNumber == z {
                    break
                }
        }
    print(createdNumbers)
    return createdNumbers
}
createArray(first: 1, last: 100)

/*Had to declare currentNumber as a-1 because couldn't manage to declare createdNumbers as already containing a (program didn't accept = [a] nor  = [Int(a)] )
 */
//Arkadijs did it like this:
func createArray(from start: Int, to end: Int) -> [Int]{
    var array = [Int]()
    for count in start...end {
        array.append(count)
    }
    return array
}
var array = createArray(from: 1, to: 100)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
//All variants of resolution copied from Arkadijs



/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
// All solutions below taken from Arkadijs:
for number in  array {
    if isEvenNumber(number) {
        if let index = array.firstIndex(of: number) {
            array.remove(at: index)
        }
    }
}
print(array)

//2
let arrayOfInts = array
for i in 0..<arrayOfInts.count {
    switch isEvenNumber(arrayOfInts[i]) {
    case true:
        if let index = array.firstIndex(of: arrayOfInts[i]){
            array.remove(at: index)
        }
    default:
        break
    }
}
print("arrayOfInts", arrayOfInts)
//3
let result = array.filter({$0 % 2 != 0})
print("result", result)
//
array.removeAll(where: isEvenNumber)
print("arr", array)
