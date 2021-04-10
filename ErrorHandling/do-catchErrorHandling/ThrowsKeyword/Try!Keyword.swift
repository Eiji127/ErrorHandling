//
//  Try!Keyword.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/10.
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

let int = 9
let tripleOfInt = try! triple(of: int) // errorが起きないのを前提にdo-catch文を省くことが可能！
print(tripleOfInt)

// 出力結果
// 27
