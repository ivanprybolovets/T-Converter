//
//  ViewController.swift
//  T-Converter
//
//  Created by Ivan Prybolovetz on 4/5/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celniusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }

    @IBAction func sliderChenged(_ sender: UISlider) {
        let temperatureCelnius = Int(round(sender.value))
        celniusLabel.text = "\(temperatureCelnius)ºC"
        let temperatureFahrenheit = temperatureCelnius * (9/5) + 32
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
}

