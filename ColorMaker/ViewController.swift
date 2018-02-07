//
//  ViewController.swift
//  ColorMaker
//
//  Created by Olya Tilichenko on 07.02.18.
//  Copyright © 2018 Olya Tilichenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet var colorView: UIView!
    @IBOutlet weak var colorRed: UISlider!
    @IBOutlet var colorGreen: UISlider!
    @IBOutlet var colorBlue: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColorComponent()
    }

    @IBAction func changeColorComponent() {
        
        if self.colorRed == nil {
            return
        }
        
        let r: Float = self.colorRed.value
        let g: Float = self.colorGreen.value
        let b: Float = self.colorBlue.value
        
        let cgr: CGFloat = CGFloat(r)
        let cgg: CGFloat = CGFloat(g)
        let cgb: CGFloat = CGFloat(b)
        
        colorView.backgroundColor = UIColor(red: cgr, green: cgg, blue: cgb, alpha: 1)
    }

}

