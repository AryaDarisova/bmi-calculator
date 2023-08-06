//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Daria Arisova on 05.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(Float(round(sender.value * 100) / 100))
        
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(Float(round(sender.value * 10) / 10))
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
//        let bmi = weight / pow(height, 2) (height * height)
    }
}

