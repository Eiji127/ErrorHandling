//
//  ThrowsKeyword_Initilizer.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/05.
//

import Foundation

enum AgeError: Error {
    case outOfRange
}
/*
 ↓ Teenger型のイニシャライザの引数ageが13以上かつ19以下でなければAgeError.outOfRangeを発生させ、
 ageが条件を満たさないTeenager型の値をインスタンス化できないようにしている
 */
struct Teenager {
    let age: Int
    
    init(age: Int) throws {
        guard case 13...19 = age else {
            throw AgeError.outOfRange
        }
        self.age = age
    }
}
