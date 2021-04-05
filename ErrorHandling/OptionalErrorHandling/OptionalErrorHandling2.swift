//
//  OptionalErrorHandling2.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation


struct User {
    let id: Int
    let name: String
    let email: String
    
    // emailが@で2分割できなければ不正なデータとしてインスタンス化を失敗させる
    init?(id: Int, name: String, email: String) {
        let components = email.components(separatedBy: "@")
        guard components.count == 2 else {
            return nil
        }
        self.id = id
        self.name = name
        self.email = email
    }
}

if let user = User(id: 0,
                   name: "Yosuke Ishikawa",
                   email: "ishikawa.example.com") {
    print("Username: \(user.name)")
} else {
    print("Error: Invaid data")
}

// 出力結果
// Error: Invalid data
