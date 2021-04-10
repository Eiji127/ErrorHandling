//
//  FatalErrorFunction.swift
//  ErrorHandling
//
//  Created by 白数叡司 on 2021/04/11.
//

import Foundation

// ex. ボタンが3つあり、それぞれ色を返すようになっている。

func title(forButtonAt index: Int) -> String {
    switch index {
    case 0:
        return "赤"
    case 1:
        return "青"
    case 2:
        return "黃"
    // ↓ ここがなければcompile errorとなる。fatalError関数のNever型の特徴によってビルドが通る。
    default:
        fatalError("想定外のボタンのインデックス\(index)を受け取りました")
    }
}
