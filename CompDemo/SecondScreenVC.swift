//
//  SecondScreenVC.swift
//  CompDemo
//
//  Created by Igor Tro on 21/07/2019.
//  Copyright © 2019 Igor Tro. All rights reserved.
//

import Foundation
import UIKit

class SecondScreenVC: UIViewController {

    @IBOutlet weak var selectedInvestment: UILabel!
    @IBOutlet weak var pickerWheel2: UIPickerView!
    
    @IBAction func next(_ sender: UIButton) {
        performSegue(withIdentifier: "goToThirdScreen", sender: self)
    }
    
    private let dataSource = ["Super Short-term new!", "Med_Med-term", "Ultra_Long-term"]
    
    var finalPick = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedInvestment.text = finalPick
        
        pickerWheel2.dataSource = self
        pickerWheel2.delegate = self

    // Do any additional setup after loading the view.
    
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! SecondScreenVC
//        vc.finalPick = self.selectedInvestment.text!
//
//    }

}

extension SecondScreenVC: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //investmentType.text = dataSource[row]
        
       // self.selectedInvestment.text = dataSource[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
}


