import UIKit
//Lesson 6
/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
 var result = numberOne
 switch calculationType {
 case .addition: result += numberTwo
 .....
 }
 print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 return result
 Exercise 1.2
 Declare two numbers.
 Call func 4 times for all calculateResult
 YOU CAN NOT DEVIDE BY 0!!!
 */

enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}
func calculateResult(firstNumber numberOne: Double, andSecondNumber numberTwo: Double, withCalculationType calculationType: CalculationType) -> Double {
    var result: Double = numberOne
    switch calculationType {
    case .addition: result += numberTwo
    case .substraction: result -= numberTwo
    case .multiplication: result *= numberTwo
    case .division: numberTwo != 0 ? result /= numberTwo : print("Can't divide by zero!")
        result = 0
    }
    print("Result: \(numberOne) \(calculationType.rawValue)  \(numberTwo) = \(result)")
    return result
}
let numberOne: Double = -9
let numberTwo: Double = 0
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .addition)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .substraction)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .multiplication)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .division)
/*
 Had to make it Double instead of Int, because of division (often dividing two numbers you get leftover).  If it is necessary to get result as an Int, then should implant "if" and in case of leftover make the announcement that the result is approximet value or actual two numbers cant be divided.
 */
//so the way to fix it is:





/*
 Exercise 2
 Create struct Car with elements
 name: String
 productionYear: Int
 horsPower: Int
 Create func getSpecs() print it with elements provided above
 2.1
 Make example of struct Car with the name audiQ7
 Make a copy of audiQ7 and name it audiTT.
 Provide the correct name for audiTT
 Than run getSpecs() for audiQ7 and audiTT
 */

struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    func getSpecs(){
        print("The \(name), produced in \(productionYear)., has an engine of \(horsePower) horsepowers.")
    }
}
var audiQ7 = Car(name: "Audi Q7", productionYear: 2018, horsePower: 33)
var audiTT = audiQ7
audiTT.name = "Audi TT"
audiQ7.getSpecs()
audiTT.getSpecs()
