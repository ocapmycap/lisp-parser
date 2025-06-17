//
//  TokenTests.swift
//  LispParserTests
//
//  Created by Brian Lane on 6/17/25.
//

import Testing

struct TokenTests {

    @Test func tokenTests() async throws {
        let leftParenToken = Token.leftParen
        #expect(leftParenToken.type == "LeftParen")
        #expect(leftParenToken.str == "(")
        #expect(leftParenToken.description == "LeftParen: (")
        
        let rightParenToken = Token.rightParen
        #expect(rightParenToken.type == "RightParen")
        #expect(rightParenToken.str == ")")
        #expect(rightParenToken.description == "RightParen: )")
        
        let symbolToken = Token.symbol("example")
        #expect(symbolToken.type == "Symbol")
        #expect(symbolToken.str == "example")
        #expect(symbolToken.description == "Symbol: example")
        
        let numberToken = Token.number(42)
        #expect(numberToken.type == "Number")
        #expect(numberToken.str == "42")
        #expect(numberToken.description == "Number: 42")
        
        let whitespaceToken = Token.whitespace
        #expect(whitespaceToken.type == "Whitespace")
        #expect(whitespaceToken.str == " ")
        #expect(whitespaceToken.description == "")
        
    }

}
