//
//  ViewController.swift
//  Calculator
//
//  Created by Albena Natova on 24.10.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func equal() -> String {
        var rawExpression = resultLabel.text!
        rawExpression = rawExpression.replacingOccurrences(of: "X", with: "*")
        rawExpression = rawExpression.replacingOccurrences(of: ",", with: ".")
        rawExpression = rawExpression.replacingOccurrences(of: "%", with: "0.01")
        let expression = NSExpression(format: rawExpression)
        let rawResult = expression.expressionValue(with: nil, context: nil) as! Double
        
        let result = formatResult(result: rawResult)

        return result
    }
    
    func formatResult(result: Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.0f", result)
        }
    }
    
    func clearString() {
        if(!resultLabel.text!.isEmpty) {
            resultLabel.text!.removeAll()
        }
    }

    @IBAction func clearBtn(_ sender: Any) {
        clearString()
    }
    
    @IBAction func delBtn(_ sender: Any) {
        if(!resultLabel.text!.isEmpty) {
            resultLabel.text!.removeLast()
        }
    }
    
    @IBAction func equalBtn(_ sender: Any) {
        let result = equal()
        resultLabel.text = result
    }
    
    @IBAction func commaBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + ","
    }
    
    @IBAction func precentBtn(_ sender: Any) {
    }
    
    @IBAction func plusBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "+"
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "-"
    }
    
    @IBAction func multipieBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "X"
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "/"
    }
    
    @IBAction func zeroBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "0"
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "1"
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "2"
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "3"
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "4"
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "5"
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "6"
    }
    
    @IBAction func sevenBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "7"
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "8"
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "9"
    }
    
}

