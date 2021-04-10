//
//  Try?Keyword_Initilizer.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/10.
//

import Foundation

enum AgeError: Error {
    case outOfRange
}

struct Teenager {
    let age: Int
    
    init(age: Int) throws {
        guard case 13...19 = age else {
            throw AgeError.outOfRange
        }
        
        self.age = age
        
    }
}
// エラーの詳細いらないとき
if let teenager = try? Teenager(age: 17) {
    print(teenager)
}

// 出力結果
// Teenager(age: 17)
