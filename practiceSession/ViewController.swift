//
//  ViewController.swift
//  practiceSession
//
//  Created by Shreyan on 14/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountValue: UILabel!
    @IBOutlet weak var rateValue: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yearValue: UILabel!
    @IBOutlet weak var darkmodeSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.keyboardType = UIKeyboardType.numberPad
     
    }
    var textValue: Int = 0
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = UIColor.black
        }
        else{
            view.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
//        let value1 =sender.value)
        yearValue.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func rateStepper(_ sender: UIStepper) {
        let steppervalue = (sender.value)
        rateValue.text = "\(steppervalue)"
    }

    @IBAction func textAct(_ sender: UIButton) {
        let pricipleAmount = Double(textField.text!)!
        let rate = Double(rateValue.text!)! / 100
        let nearlyTotalSI = pricipleAmount * rate
        let numberOfYears = Double(yearValue.text!)!
        let finalValue = nearlyTotalSI * numberOfYears
        let finalAmount = pricipleAmount + finalValue
        
        amountValue.text = String(format: "%.2f", finalAmount)
        
    }
    
}

