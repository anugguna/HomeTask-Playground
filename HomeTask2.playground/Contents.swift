import UIKit
//Lesson 2
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var numOne: Float = 3.14
var numTwo: Float = 7.77
var result = Double (numOne + numTwo)

print ("Sum is \(result)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne: Int = 8
var numberTwo: Int = 5
let dev = Int (numberOne / numberTwo)
let remaind: Int = (numberOne % numberTwo)

print("When dividing \(numberOne) by \(numberTwo), the result is \(dev), the remainder is \(remaind)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price4: Int = 1000
var price5to9: Int = 900
var price10: Int = 850
var qty: Int = 6
var totalSum4: Int = (qty * 1000)
var totalSum5to9: Int = (qty * 900)
var totalSum10: Int = (qty * 850)

if qty < 5 {
    print ("new: \(qty) MacBook Pro with the price of: \(price4) EUR, will cost you: \(totalSum4) Eur")
}else if qty > 4 && qty < 10 {
    print ("new: \(qty) MacBook Pro with the price of: \(price5to9) EUR, will cost you: \(totalSum5to9) Eur")
}else {print("new: \(qty) MacBook Pro with the price of: \(price10) EUR, will cost you: \(totalSum10) Eur")
}
//OR as Arkadijs did it:
/*var qty = 0
var price = 1000
var totalSum = qty * price
if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10{
    price = 850
}
if qty != 0 {
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}else{
    print("please enter a valid MacBook qty")
}
*/
 /*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

var userInputAge = "33a"
 
if let actualNumber = Int(userInputAge) {
     print ("Age : \(actualNumber)")
     }
else {print ("Data in the field <<Age>> is not correct, please check it! You wrote <<\(userInputAge)>>.")
}
/*Or, as Arkadijs did it:
 
let userInputAge = "33a"
//let convertStringToInt = Int(userInputAge)!
if Int(userInputAge) != nil {
    print("String is convertible to Int with the value \(Int(userInputAge) ?? 0)")
}else{
    print("Unable to convert")
}
*/
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
/* The way I did it:
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
let calendar = Calendar.current
let currentDate = Date()
let myBirthDateString = "01.05.1986"
let myBirthDate = formatter.date(from: myBirthDateString) ?? Date()
let totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to: currentDate).year
let totalMonthsFromBirth = calendar.dateComponents([.month], from: myBirthDate, to: currentDate).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDate, to: currentDate).day
if totalYearsFromBirth == 0 || totalMonthsFromBirth == 0 || totalDaysFromBirth == 0 {
    print("Unable to check total years, months is \(totalYearsFromBirth ?? 0)")
}else{
    print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthsFromBirth!), total days: \(totalDaysFromBirth!)")
}
*/

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
let calendar = Calendar.current
let currentDate = Date()
let myBirthDateString = "12.12.1978"
let myBirthDate = formatter.date(from: myBirthDateString) ?? Date()
let totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to: currentDate).year
let totalMonthsFromBirth = calendar.dateComponents([.month], from: myBirthDate, to: currentDate).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDate, to: currentDate).day
if totalYearsFromBirth == 0 || totalMonthsFromBirth == 0 || totalDaysFromBirth == 0 {
    print("Unable to check total years, months is \(totalYearsFromBirth ?? 0)")
}else{
    print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthsFromBirth!), total days: \(totalDaysFromBirth!)")
}
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
if let month = calendar.dateComponents([.month], from: myBirthDate).month {
    var quarter = 0
    switch month {
    case 1...3:
        quarter = 1
    case 4...6:
        quarter = 2
    case 7...9:
        quarter = 3
    case 10...12:
        quarter = 4
    default:
        quarter = 0
    }
    if quarter != 0 {
        print("I was born in the \(quarter). quarter")
    }else{
    }
}


/*
 At first I did the Ex6 this way, but there were a lot of notifications about the use of : and ; so it didn't work


var birthMonth = calendar.component(.month, from: myBirthDate!)
var month = (birthMonth)
switch month {
    case month < 3:
        print("I was born in the first quarter")
    case month > 4 && month < 7:
        print("I was born in the second quarter")
    case month > 7 && month < 9:
        print("I was born in the third quarter")
    default:
        print("I was born in the fourth quarter")
}
//Tried it this way, still a lot of notifications like "expression pattern of type 'Bool' cannot match values of type 'Int'", tried to declare "var month = Double(birthMonth)", but didn't help :slightly_smiling_face:


let birthDate = formatter.date(from: "12.12.1978")
var birthMonth = calendar.component(.month, from: birthDate!)
var month = (birthMonth)
switch month {
    case month < 3:
        print("I was born in the first quarter")
    case month > 4 && month < 7:
        print("I was born in the second quarter")
    case month > 7 && month < 9:
        print("I was born in the third quarter")
    default:
        print("I was born in the fourth quarter")
}
*/
