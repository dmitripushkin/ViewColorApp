//
//  MainScreenViewController.swift
//  ViewColorApp
//
//  Created by Повелитель on 05.09.2021.
//

import UIKit

protocol SetupColorViewControllerDelegate {
    func updateValuesFor(
        red: String,
        green: String,
        blue: String
    )
}

class MainScreenViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var mainView: UIView!
    
    // MARK: - Public properties
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.backgroundColor = UIColor(
            displayP3Red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let setupVC = segue.destination as? SetupColorViewController else { return }
//        setupVC.colorView. // я так и не понял как достучаться до установленных
//                              значений colorView.backgroundColor которые устанавливает
//                              метод setColor(), чтобы передать в них значения
//                              red, green, blue этого класса.
        
    }
}

extension MainScreenViewController: SetupColorViewControllerDelegate {
    func updateValuesFor(red: String, green: String, blue: String) {
    print("")
//  здесь по задумке должны были обновляться значения red, green, blue, которые
//  передаются с того экрана, например, red = redLabelAmount.text и приводиться
//  к типу CGFloat, чтобы затем их передавть в mainView.backgroundColor, таким образом
//  цвет этой вью менялся бы в соотвествии с установленными значениями слайдеров
//  на том экране.
    }
}
