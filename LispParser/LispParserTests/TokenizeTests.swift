//
//  TokenizeTest.swift
//  LispParserTests
//
//  Created by Brian Lane on 6/17/25.
//

import Testing
@testable import LispParser
struct TokenizeTest {

    @Test func tokenizeTest() async throws {
//        let sut = "(+ 2 3)"
//        let expected = [
//            Token.leftParen,
//            Token.symbol("+"),
//            Token.number(2),
//            Token.number(3),
//            Token.rightParen,
//        ]
//        let tokens: [Token] = tokenize(sut)
//        #expect(tokens.count == 5)
//        #expect(tokens == expected)
//        
//        let complexSut = "(+ 2 (+ 4 3))"
//        let complexExpected = [
//            Token.leftParen,
//            Token.symbol("+"),
//            Token.number(2),
//            Token.leftParen,
//            Token.symbol("+"),
//            Token.number(4),
//            Token.number(3),
//            Token.rightParen,
//            Token.rightParen,
//        ]
//        
//        let complexTokens: [Token] = tokenize(complexSut)
//        #expect(complexTokens.count == 9)
//        #expect(complexTokens == complexExpected)
//        
//        let moreThanOneSut = "(+ 12 (+ 35 100))"
//        let moreThanOneExpected = [
//            Token.leftParen,
//            Token.symbol("+"),
//            Token.number(12),
//            Token.leftParen,
//            Token.symbol("+"),
//            Token.number(35),
//            Token.number(100),
//            Token.rightParen,
//            Token.rightParen,
//        ]
//        
//        let moreThanOneTokens: [Token] = tokenize(moreThanOneSut)
//        #expect(moreThanOneTokens.count == 9)
//        #expect(moreThanOneTokens == moreThanOneExpected)
//        
//        let multipleOperationsSut = "(* 2 (+ 3 (/ 4 5)))"
//        let multipleOperationsExpected = [
//            Token.leftParen,
//            Token.symbol("*"),
//            Token.number(2),
//            Token.leftParen,
//            Token.symbol("+"),
//            Token.number(3),
//            Token.leftParen,
//            Token.symbol("/"),
//            Token.number(4),
//            Token.number(5),
//            Token.rightParen,
//            Token.rightParen,
//            Token.rightParen,
//        ]
//        
//        let multipleOperationsTokens: [Token] = tokenize(multipleOperationsSut)
//        #expect(multipleOperationsTokens.count == multipleOperationsExpected.count)
//        #expect(multipleOperationsTokens == multipleOperationsExpected)
        
        let nonMathSut = "(list 2 3)"
        let nonMathExpected = [
            Token.leftParen,
            Token.symbol("list"),
            Token.number(2),
            Token.number(3),
            Token.rightParen,
        ]
        let nonMathTokens: [Token] = tokenize(nonMathSut)
        #expect(nonMathTokens.count == nonMathExpected.count)
        #expect(nonMathTokens == nonMathExpected)
    }

}
