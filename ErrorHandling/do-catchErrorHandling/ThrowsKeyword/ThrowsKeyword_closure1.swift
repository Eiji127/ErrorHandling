//
//  RethrowsKeyword_closure.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

struct SomeError: Error { }

func rethrowingFunction(_ throwingClosure: () throws -> Void) rethrows {
    try throwingClosure()
}

do {
    try rethrowingFunction {
        throw SomeError()
    }
} catch {
    error
}
