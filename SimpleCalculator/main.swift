//
//  main.swift
//  SimpleCalculator
//
//  Created by Keyatta Brooks on 7/6/25.
//

import Foundation

// Welcome message
print("Welcome to SimpleCalculator!")

// About SimpleCalculator and how to use
print("This calculator crunches numbers to get their sum, difference, product, or quotient. Simple!")

// Prompts user to choose operation by typing in number associated with it
print("Which operation would you like to perform? Enter the number associated with your chosen operation:")
print("1. Addition ➕")
print("2. Subtraction ➖")
print("3. Multiplication ✖️")
print("4. Division ➗")

var operationSymbol: String = ""

if let userChoice = readLine(), let choiceNum = Int(userChoice), (1...4).contains(choiceNum) {
    switch choiceNum {
    case 1: operationSymbol = "+"
    case 2: operationSymbol = "-"
    case 3: operationSymbol = "*"
    case 4: operationSymbol = "/"
    default: operationSymbol = "?" // Invalid input and this should never happen
    }
    print("You selected: \(operationSymbol)")
} else {
    print("Please enter a valid number (1-4).")
}

// Exits program if user enters invalid character or number
if operationSymbol == "" {
    print("Exiting program. Please restart and choose a valid operation.")
    exit(0)
}

// Prompts user to enter first number

var first: Double = 0.0
var validFirst = false

while !validFirst {
    print("Enter your first number:")
    if let firstNum = readLine(), let num1 = Double(firstNum) {
        first = num1
        validFirst = true
        print("You entered the number \(firstNum).")
    } else {
    print("That is not a valid number. Please try again.")
    }
}


// Prompts user to enter second number

var second: Double = 0.0
var validSecond = false

while !validSecond {
    print("Enter your second number:")
    if let secondNum = readLine(), let num2 = Double(secondNum) {
        second = num2
        validSecond = true
        print("You entered the number \(secondNum).")
    } else {
        print("That is not a valid number. Please try again.")
    }
}
