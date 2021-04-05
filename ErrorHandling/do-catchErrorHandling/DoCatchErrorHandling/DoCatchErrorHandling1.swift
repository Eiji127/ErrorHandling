//
//  DoCatchErrorHandling.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

struct SomeError: Error { }

do {
    throw SomeError()
    print("Success")
} catch {
    print("Failure: \(error)")
}

// 出力結果
// Failure: SomeError
