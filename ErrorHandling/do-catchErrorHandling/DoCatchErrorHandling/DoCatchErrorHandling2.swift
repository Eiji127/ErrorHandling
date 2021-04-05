//
//  DoCatchErrorHandling2.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

enum SomeError: Error {
    case error1
    case error2(reason: String)
}

do {
    throw SomeError.error2(reason: "何かがおかしいようです")
} catch SomeError.error1 {
    print("error1")
} catch SomeError.error2(let reason) {
    print("error2: \(reason)")
} catch {
    print("Unknown error: \(error)")
}

// 出力結果
// Failure: error2: 何かがおかしいようです
