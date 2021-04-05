//
//  ErrorProtocols.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

enum NetworkError: Error {
    case timeout
    case cancelled
}

enum DatabaseError: Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}
