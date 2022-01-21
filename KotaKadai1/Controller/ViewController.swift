//
//  ViewController.swift
//  KotaKadai1
//
//  Created by 前田航汰 on 2022/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var imputNumTextField1: UITextField!
    @IBOutlet private weak var imputNumTextField2: UITextField!
    @IBOutlet private weak var imputNumTextField3: UITextField!
    @IBOutlet private weak var imputNumTextField4: UITextField!
    @IBOutlet private weak var imputNumTextField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func calcButton(_ sender: Any) {
        let imputNum1 = nilJudge(textField: imputNumTextField1)
        let imputNum2 = nilJudge(textField: imputNumTextField2)
        let imputNum3 = nilJudge(textField: imputNumTextField3)
        let imputNum4 = nilJudge(textField: imputNumTextField4)
        let imputNum5 = nilJudge(textField: imputNumTextField5)

        resultLabel.text = String(addCalc(num1: imputNum1, num2: imputNum2, num3: imputNum3, num4: imputNum4, num5: imputNum5))
    }

    // 足し算を行う関数
    private func addCalc(num1: Int, num2: Int, num3: Int, num4: Int, num5: Int) -> Int {
        num1 + num2 + num3 + num4 + num5
    }

    // TextFieldの値がnilならInt型の0へ,それ以外ならInt型へ変換する関数
    private func nilJudge(textField: UITextField) -> Int {
        return Int(textField.text ?? "") ?? 0
    }
}
