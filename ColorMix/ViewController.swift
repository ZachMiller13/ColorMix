//
//  ViewController.swift
//  ColorMix
//
//  Created by Zachary Miller on 3/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet var colorSwatch: UIView!
    

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorSwatch.backgroundColor = color
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
}
