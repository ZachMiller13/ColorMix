//
//  ViewController.swift
//  ColorMix
//
//  Created by Zachary Miller on 3/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        colorSwatch.backgroundColor = .black
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet var colorSwatch: UIView!
    
}

