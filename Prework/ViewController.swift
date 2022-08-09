//
//  ViewController.swift
//  Prework
//
//  Created by Harmichimo on 8/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    var tipPercentage = 0.10
    @IBAction func slideCalc(_ sender: UISlider) {
        tipPercentLabel.text = String(format: "%.2f", Double(sender.value)) + "%"
        tipPercentage = (Double(sender.value)*0.01)
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = bill * tipPercentage
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
