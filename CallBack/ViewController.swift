//
//  ViewController.swift
//  CallBack
//
//  Created by KS on 2021/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!

    // Modelをインスタンス化
    let viewModel = CallBackViewModel()

    // アクションでモデルのメソッドを起動 callbackで渡されたカウントをupdateLabelに渡す
    @IBAction func plusButtonDidTap(_ sender: Any) {
        viewModel.incrementCount { count in
            updateLabel(count: count)
        }
    }

    @IBAction func minusButtonDidTap(_ sender: Any) {
        viewModel.decrementCount { count in
            updateLabel(count: count)
        }
    }

    @IBAction func resetButtonDidTap(_ sender: Any) {
        viewModel.resetCount { count in
            updateLabel(count: count)
        }
    }

    // 渡されたカウントをラベルへ表示する
    private func updateLabel(count: Int) {
        countLabel.text = "\(count)"
    }
}
