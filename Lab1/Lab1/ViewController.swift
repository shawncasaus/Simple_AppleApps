//
//  ViewController.swift
//  Lab1
//
//  Created by Sean Casaus on 8/31/18.
//  Copyright © 2018 Sean Casaus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var bmiField: UILabel!
    @IBOutlet weak var classificationField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateBMI(_ sender: Button) {
        if let height = Double(self.heightField.text!) {
            if let weight = Double(self.weightField.text!) {
                print(height)
                print(weight)
                
                let BMI = (weight / (height) / (height)) * 703
                bmiField.text = String.localizedStringWithFormat("%.2f %@", BMI, "")
                
                if BMI < 18 {
                    classificationField.text = "You are underweight"
                }else if BMI >= 18 && BMI < 25 {
                    classificationField.text = "You are normal"
                }else if BMI >= 25 && BMI < 30 {
                    classificationField.text = "You are pre-obese"
                }else {
                    classificationField.text = "You are obese"
                }
            }
            else {
                bmiField.text = "Please enter a number!"
            }
        }
        else {
            bmiField.text = "Please enter a number!"
        }
    }
    
}

