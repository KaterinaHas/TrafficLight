//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ekaterina Vasina on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var runTrafficLight: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        redLight.alpha = 1
    }
    
    @IBAction func RunTrafficLight(_ sender: Any) {
        runTrafficLight.setTitle("Next", for: .normal)
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        } else if yellowLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
    }
}
