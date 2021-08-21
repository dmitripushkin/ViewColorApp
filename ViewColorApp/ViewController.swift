//
//  ViewController.swift
//  ViewColorApp
//
//  Created by Повелитель on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redLabelAmount: UILabel!
    @IBOutlet weak var greenLAbelAmount: UILabel!
    @IBOutlet weak var blueLabelAmount: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 25
        
        
        redLabelAmount.text = String(format: "%.2f", redSlider.value)
        
        
    }

    @IBAction func redSliderAction() {
        redLabelAmount.text = String(format: "%.2f", redSlider.value)
    }
    
}

