//
//  CalculatorBrain.swift
//  bmi-calculator
//
//  Created by Daria Arisova on 06.08.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let calculatedValue = weight / (height * height)
        
        if calculatedValue < 18.5 {
            bmi = BMI(value: calculatedValue, advice: "Eat more pies!", color: UIColor(red: 63/255, green: 73/255, blue: 127/255, alpha: 1.0))
        } else if calculatedValue <= 24.9 {
            bmi = BMI(value: calculatedValue, advice: "Fir as a fiddle!", color: UIColor(red: 93/255, green: 156/255, blue: 89/255, alpha: 1.0))
        } else {
            bmi = BMI(value: calculatedValue, advice: "Eat less pies!", color: UIColor(red: 223/255, green: 46/255, blue: 56/255, alpha: 1.0))
        }
    }
    
}
