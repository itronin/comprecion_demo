//
//  ViewController.swift
//  CompDemo
//
//  Created by Igor Tro on 21/07/2019.
//  Copyright © 2019 Igor Tro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let dataSource = ["", "Apartment", "House", "Multifamily"]
    
    @IBOutlet weak var pickerWheel: UIPickerView!

    
    var investmentPick = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerWheel.dataSource = self
        pickerWheel.delegate = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondScreenVC
        vc.finalPick = self.investmentPick
    }

    @IBAction func next(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //investmentType.text = dataSource[row]
        
        self.investmentPick = dataSource[row]
        
    
    }
    
    
}



