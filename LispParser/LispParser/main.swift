//
//  main.swift
//  LispParser
//
//  Created by Brian Lane on 6/17/25.
//

import Foundation

// TODO: accept input from command line arguments 🐚
let input = "(+ 2 3)"
print("Input: \(input)")
print("Parsing...")
print(tokenize(input))
