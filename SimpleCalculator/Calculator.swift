//
//  Calculator.swift
//  SimpleCalculator
//
//  Created by Keyatta Brooks on 7/6/25.
//

import Foundation

func calculator(_ first: Double, _ second: Double, _ operationSymbol: String) -> Double {
    if operationSymbol == "+" {
        return first + second
    } else if operationSymbol == "-" {
        return first - second
    } else if operationSymbol == "*" {
        return first * second
    } else if operationSymbol == "/" {
        return first / second
    } else {
        exit(0)
    }
}
