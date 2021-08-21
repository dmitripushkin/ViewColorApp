//
//  ViewController.swift
//  ViewColorApp
//
//  Created by Повелитель on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabelAmount: UILabel!
    @IBOutlet weak var greenLabelAmount: UILabel!
    @IBOutlet weak var blueLabelAmount: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 25
        colorView.backgroundColor = .black
        
        
        redSlider.setValue(0, animated: false)
        greenSlider.setValue(0, animated: false)
        blueSlider.setValue(0, animated: false)
        
        redLabelAmount.text = String(format: "%.2f", redSlider.value)
        greenLabelAmount.text = String(format: "%.2f", greenSlider.value)
        blueLabelAmount.text = String(format: "%.2f", blueSlider.value)
        
    }

    @IBAction func redSliderAction() {
        redLabelAmount.text = String(format: "%.2f", redSlider.value)
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
            
    }
    
    @IBAction func greenSliderAction() {
        greenLabelAmount.text = String(format: "%.2f", greenSlider.value)
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    @IBAction func blueSliderAction() {
        blueLabelAmount.text = String(format: "%.2f", blueSlider.value)
        colorView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
   
    
}

}
