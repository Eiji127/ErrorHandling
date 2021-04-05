//
//  ResultErrorHandling.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

enum DatabaseError: Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) -> Result<User, DatabaseError> {
    let users = [
        User(id: 1,
             name: "Yusei Nishiyama",
             email: "nishiyama@example.com"),
        User(id: 2,
             name: "Yosuke Ishikawa",
             email: "ishikawa@example.com")
    ]
    
    for user in users {
        if user.id == id {
            return .success(user)
        }
    }
    return .failure(.entryNotFound)
}

let id = 0
let result = findUser(byID: id)

switch result {
case let .success(user):
    print(".success: \(user)")
case let .failure(error):
    switch error {
    case .entryNotFound:
        print(".failure: .entryNotFound")
    case .duplicatedEntry:
        print(".failure: .duplicatedEntry")
    case .invalidEntry(let reason):
        print(".failure: .invalidEntry(\(reason)")
    }
}

// 出力結果
// .failure: .entryNotFound
