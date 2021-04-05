//
//  ThrowKeyword.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

enum OperationError: Error {
    case overCapacity
}

func triple(of int: Int) throws -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }
    
    return int * 3
}

/*
 ↓関数にthrowsキーワードが指定されていないため、do-catch文で囲まれていないthrow文によるエラーはコンパイルエラーとなる。
 */
func triple(of int: Int) -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }
    
    return int * 3
} // compile Error
