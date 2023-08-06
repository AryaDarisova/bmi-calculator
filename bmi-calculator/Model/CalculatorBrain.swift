//
//  CalculatorBrain.swift
//  bmi-calculator
//
//  Created by Daria Arisova on 06.08.2023.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: Float?
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue ?? 0.0)
        
        return bmiTo1DecimalPlace
    }
}
