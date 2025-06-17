//
//  Tokenizer.swift
//  LispParser
//
//  Created by Brian Lane on 6/17/25.
//

import Foundation

/// Tokenizes the given input string into an array of `Token` objects.
/// - Parameter input: A string conforming to `StringProtocol` to be tokenized.
/// - Returns: An array of `Token` objects representing the tokenized input.
/// N.B. Token output makes no guarantee for soundness of parsing input.
func tokenize<Input: StringProtocol>(_ input: Input) -> [Token] {
    guard let x = input.first else {
        return []
    }
    let xs = input.dropFirst()
    
    switch x {
    case "(":
        return [.leftParen] + tokenize(xs)
    case ")":
        return [.rightParen] + tokenize(xs)
    case " ":
        return tokenize(xs)
    case "\n", "\t":
        return [.whitespace] + tokenize(xs)
    default:
        var symbol = String(x)
        var remaining = xs
        
        // N.B. 🤓 Oh boy is this fragile!
        while let nextChar = remaining.first, nextChar.isLetter || nextChar.isNumber || nextChar == "-" || nextChar == "_" || nextChar.isOperator && !remaining.isEmpty {
            symbol.append(nextChar)
            if remaining.isEmpty {
                break
            } else {
                remaining = remaining.dropFirst()
            }
        }
        
        if let integer = Int(symbol) {
            return [.number(integer)] + tokenize(
                remaining)
        }
        return [.symbol(symbol)] + tokenize(remaining)
    }
}

extension Character {
    // TODO: Add more operators as needed; strong type for Operator?
    var isOperator: Bool {
        return self == "+" || self == "-" || self == "*" || self == "/"
    }
}
