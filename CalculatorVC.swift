//
//  CalculatorVC.swift
//  SpendAndSave
//
//  Created by Jamie Henderson on 2017-05-18.
//  Copyright © 2017 Jamie Henderson. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    enum Operation : String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
        
    }
    
    var CurrentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var Result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        outputLabel.text = "0"
    }
    
    
    @IBAction func numberPressed (sender: UIButton) {
        
        runningNumber += "\(sender.tag)"
        outputLabel.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(operation: .Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(operation: .Multiply)
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(operation: .Subtract)
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(operation: .Add)
    }
    
    @IBAction func onEqualPressed(sender: AnyObject) {
        processOperation(operation: CurrentOperation)
    }
    
    
    
    func processOperation(operation: Operation) {
        if CurrentOperation != Operation.Empty {
            
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if CurrentOperation == Operation.Multiply {
                    Result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                } else if CurrentOperation == Operation.Divide {
                    Result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                } else if CurrentOperation == Operation.Subtract {
                    Result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                } else if CurrentOperation == Operation.Add {
                    Result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                
                leftValStr = Result
                outputLabel.text = Result
            }
            
            CurrentOperation = operation
        } else {
            leftValStr = runningNumber
            runningNumber = ""
            CurrentOperation = operation
            
        }
    }

}
