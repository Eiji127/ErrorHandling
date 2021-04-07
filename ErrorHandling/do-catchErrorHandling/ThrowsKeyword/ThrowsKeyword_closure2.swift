//
//  ThrowsKeyword_closure2.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

enum SomeError: Error {
    case originalError
    case convertedError
}

func rethrowingFunction(_ throwingClosure: () throws -> Void) rethrows {
    do {
        try throwingClosure()
    } catch {
        throw SomeError.convertedError
    }
}

do {
    try rethrowingFunction {
        throw SomeError.originalError
    }
} catch {
    error
}
