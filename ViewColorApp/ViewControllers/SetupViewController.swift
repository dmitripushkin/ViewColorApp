//
//  SetupColorViewController.swift
//  ViewColorApp
//
//  Created by Повелитель on 21.08.2021.
//

import UIKit

class SetupColorViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var colorView: UIView!
        
    @IBOutlet weak var redLabelAmount: UILabel!
    @IBOutlet weak var greenLabelAmount: UILabel!
    @IBOutlet weak var blueLabelAmount: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redAmountTF: UITextField!
    @IBOutlet weak var greenAmountTF: UITextField!
    @IBOutlet weak var blueAmountTF: UITextField!
    
    // MARK: - Public properties
    var delegate: SetupColorViewControllerDelegate!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 25
        
        setColor()
        
        setValue(for: redLabelAmount,
                      greenLabelAmount,
                      blueLabelAmount
        )
    }
    
    // MARK: - IB Actions
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider:
            redLabelAmount.text = string(from: redSlider)
        case greenSlider:
            greenLabelAmount.text = string(from: greenSlider)
        default:
            blueLabelAmount.text = string(from: blueSlider)
        }
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        delegate.updateValuesFor(
            red: redLabelAmount.text ?? "0",
            green: greenLabelAmount.text ?? "0",
            blue: blueLabelAmount.text ?? "0"
        )
    }
    
    // MARK: - Private Methods
    private func setColor() {
        colorView.backgroundColor = UIColor(
            displayP3Red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabelAmount:
                redLabelAmount.text = string(from: redSlider)
            case greenLabelAmount:
                greenLabelAmount.text = string(from: greenSlider)
            default:
                blueLabelAmount.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}





