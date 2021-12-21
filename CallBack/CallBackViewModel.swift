//
//  CallBackViewModel.swift
//  CallBack
//
//  Created by KS on 2021/12/22.
//

import Foundation

class CallBackViewModel {

    private var count = 0

    // クロージャ カウントを操作してcallbackでカウントを返す
    func incrementCount(callback: (Int) -> Void) {
        count += 1
        callback(count)
    }

    func decrementCount(callback: (Int) -> ()) {
        count -= 1
        callback(count)
    }

    func resetCount(callback: (Int) -> ()) {
        count = 0
        callback(count)
    }
}
