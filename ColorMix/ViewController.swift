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
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorSwatch.backgroundColor = color
    }
}
