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
    var imputNum1 = 0, imputNum2 = 0, imputNum3 = 0, imputNum4 = 0, imputNum5 = 0

    @IBAction func calcButton(_ sender: Any) {
        imputNum1 = nilJudge(imputText: imputNumTextField1)
        imputNum2 = nilJudge(imputText: imputNumTextField2)
        imputNum3 = nilJudge(imputText: imputNumTextField3)
        imputNum4 = nilJudge(imputText: imputNumTextField4)
        imputNum5 = nilJudge(imputText: imputNumTextField5)
        
        resultLabel.text = String(addCalc(num1: imputNum1, num2: imputNum2, num3: imputNum3, num4: imputNum4, num5: imputNum5))
    }
    
    //足し算を行う関数
    func addCalc(num1: Int, num2: Int, num3: Int, num4: Int, num5: Int)->Int{
        var answer = 0
        answer = num1 + num2 + num3 + num4 + num5
        return answer
    }
    
    //TextFieldの値がnilならInt型の0へ,それ以外ならInt型へ変換する関数
    func nilJudge(imputText: UITextField)->Int{
        if imputText.text?.isEmpty == false{
            return Int(imputText.text!) ?? 0
        }else{
            return 0
        }
    }
}
