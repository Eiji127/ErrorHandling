//
//  Defer.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/10.
//

import Foundation

enum Error: Swift.Error {
    case someError
}

func someFunction() throws {
    print("Do something")
    Throw Error.someError
}

func cleanUp() {
    print("Cleanup")
}

// MARK: - 普通の実行
do {
    try someFunction()
    cleanUp() // someFunctionでエラーが発生した場合は実行されない
} catch {
    print("Error: \(error)")
}

// 出力結果
/*
 Do something
 Error: someError
 */


// MARK: - defer文を使った遅延実行
do {
    defer {
        // do節を抜けたタイミングで必ず実行
        cleanUp()
    }
    try someFunction()
} catch {
    print("Error: \(error)")
}

// 出力結果
/*
 Do something
 Cleanup
 Error: someError
 */
