//
//  TempViewController.swift
//  practiceSession
//
//  Created by Shreyan on 14/04/22.
//

import UIKit

class TempViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var pickerViewTemp: UIPickerView!
    
   
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    @IBOutlet weak var tempSegment: UISegmentedControl!
    @IBOutlet weak var valueOfTemp: UILabel!
    
    
    var strValues = ["178","96","75","122"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerViewTemp.delegate = self
        pickerViewTemp.dataSource = self
        pickerViewTemp.delegate?.pickerView?(pickerViewTemp, didSelectRow: 0, inComponent: 0)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return strValues.count

}
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return strValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let value = strValues[pickerViewTemp.selectedRow(inComponent: 0)]
        valueOfTemp.text = "\(value)"
    
    }

}
