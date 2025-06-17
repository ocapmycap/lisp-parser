//
//  LispToken.swift
//  LispParser
//
//  Created by Brian Lane on 6/17/25.
//

/// represents different types of tokens used to make up a Lisp expression.
enum Token: Equatable, Sendable {
    case leftParen
    case rightParen
    case whitespace
    case symbol(String)
    case number(Int)
    
    var type: String {
        switch self {
        case .leftParen:
            return "LeftParen"
        case .rightParen:
            return "RightParen"
        case .whitespace:
            return "Whitespace"
        case .symbol:
            return "Symbol"
        case .number:
            return "Number"
        }
    }
    
    var str: String {
        switch self {
        case .leftParen:
            return "("
        case .rightParen:
            return ")"
        case .whitespace:
            return " "
        case .symbol(let value):
            return value
        case .number(let value):
            return String(value)
        }
    }
    
    var description: String {
        switch self {
        case .whitespace:
            ""
        default:
            "\(type): \(str)"
        }
    }
}
