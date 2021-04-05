//
//  OptionalErrorHandling.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) -> User? {
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
            return user
        }
    }
    return nil
}

let id = 1
if let user = findUser(byID: id) {
    print("Name: \(user.name)")
} else {
    print("Error: User not found")
}

// 出力結果
// Name: Yusei Nishikawa
