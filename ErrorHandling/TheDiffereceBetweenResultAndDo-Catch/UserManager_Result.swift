//
//  UserManager_Result.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/10.
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

func localPart(formEmail email: String) -> Result<String, DatabaseError> {
    let components = email.components(separatedBy: "@")
    guard components.count == 2 else {
        return .failure(.invalidEntry(reason: "Invalid email address"))
    }
    
    return .success(components[0])
}

let userID = 1

switch findUser(byID: userID) {
case .success(let user):
    switch localPart(formEmail: user.email) {
    case .success(let localPart):
        print("Local part: \(localPart)")
    case .failure(let error):
        print("Error: \(error)")
    }
case .failure(let error):
    print("Error: \(error)")
}

// 出力結果
// Local part: nishiyama
