//
//  ViewController.swift
//  KotaKadai1
//
//  Created by 前田航汰 on 2022/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imputTextField: [UITextField]!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func calcButton(_ sender: Any) {
        resultLabel.text = String(imputTextField
                                    .map { Int($0.text ?? "") ?? 0 }
                                    .reduce(0, +)
        )
    }
}
