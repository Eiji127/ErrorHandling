//
//  AssertionFailureFunction.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/12.
//

import Foundation

func printSeason(forMonth month: Int) {
    switch month {
    case 1...2, 12:
        print("冬")
    case 3...5:
        print("春")
    case 6...8:
        print("夏")
    case 9...11:
        print("秋")
    default:
        assertionFailure("monthには1から12までの数字を指定して下さい")
    }
}

printSeason(forMonth: 12)
printSeason(forMonth: 4)
printSeason(forMonth: 15)

// 出力結果
/*
 冬
 春
 fatal error: monthには1から12までの数字を指定して下さい
 */
