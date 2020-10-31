//
//  ViewController.swift
//  bmi_calculator
//
//  Created by Rick Brown on 28/10/2020.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var heightInput: UITextField!
  
  @IBOutlet weak var weightInput: UITextField!
  
  @IBOutlet weak var bmiScore: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func calculateButtonPress(_ sender: Any) {
    // declare weight & height variables using the values from the textInputs
    var weight: Double = 0
    var height: Double = 0
    
    if let weightText = weightInput.text {
      if let weightDouble = Double(weightText) {
        weight = weightDouble
      }
    }
    
    if let heightText = heightInput.text {
      if let heightDouble = Double(heightText) {
        height = heightDouble
      }
    }
    
    // calculate the bmiScore
    let bmi = weight/(height * height)
    
    // calculate the classification of the bmiScore
    // Underweight, Healthy Weight, Overweight, Obese
    var classification: String
    
    if bmi < 18.5 {
      classification = "Underweight"
    } else if bmi < 24.9 {
      classification = "Healthy Weight"
    } else if bmi < 29.9 {
      classification = "Overweight"
    } else {
      classification = "Obese"
    }
    
    // format the bmiScore in a string format to 1 decimal place
    let formattedBMI = String(format: "%.1f", bmi)
    
    // print the bmiScore and the classification
    bmiScore.text = "BMI: \(formattedBMI), \(classification)"

  }
}

