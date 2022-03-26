//
//  ViewController.swift
//  light
//
//  Created by Александр on 24.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchLightButton: UIButton!
    var tumblerOne = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        
        switchLightButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
   
    @IBAction func pressingButton() {
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        if tumblerOne == 0 {
            redLightView.alpha = 1
            switchLightButton.setTitle("NEXT", for: .normal)
            tumblerOne = 1
        } else if tumblerOne == 1 {
            yellowLightView.alpha = 1
            tumblerOne = 2
        } else if tumblerOne == 2 {
            greenLightView.alpha = 1
            tumblerOne = 0
        }
    }
}

