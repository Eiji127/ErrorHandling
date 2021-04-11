//
//  AssertionFunction.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/11.
//

import Foundation

func format(minute: Int, second: Int) -> String {
    assert(second < 60, "secondは60未満に設定して下さい")
    return "\(minute)分\(second)"
}

format(minute: 24, second: 48) // 24分48秒
format(minute: 24, second: 72) // 実行時エラー
