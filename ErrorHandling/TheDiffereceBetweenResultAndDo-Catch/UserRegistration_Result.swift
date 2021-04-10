//
//  UserRegistration.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/10.
//

import Foundation

struct User {
    let id: Int
    let name: String
}

enum DatabaseError: Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

var registeredUsers = [
    User(id: 1, name: "Yusei Nishiyama"),
    User(id: 2, name: "Yosuke Ishikawa")
]

func register(user: User) -> Result<Void, DatabaseError> {
    for registeredUser in registeredUsers {
        if registeredUser.id == user.id {
            return .failure(.duplicatedEntry)
        }
    }
    
    registeredUsers.append(user)
    
    return .success(())
}

let user = User(id: 1, name: "Taro Yamada")
register(user: user) // 処理に失敗するがエラーは無視される
