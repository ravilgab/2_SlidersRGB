//
//  ViewController.swift
//  2_SlidersRGB
//
//  Created by Ravil on 22.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 20
        coloredView.layer.borderWidth = 1
        coloredView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        redSlider.value = 0.2
        greenSlider.value = 0.5
        blueSlider.value = 0.8
        
        paintView()
        setLabelValue()
    }
    
    @IBAction func masterSlider(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            redLabel.text = convertToString(from: sender)
        case 1:
            greenLabel.text = convertToString(from: sender)
        default:
            blueLabel.text = convertToString(from: sender)
        }
        
        paintView()
    }
    
    private func setLabelValue() {
        redLabel.text = convertToString(from: redSlider)
        greenLabel.text = convertToString(from: greenSlider)
        blueLabel.text = convertToString(from: blueSlider)
    }
    
    private func convertToString(from slider: UISlider) -> String {
        return String(format: "%.2f", slider.value)
    }

    private func paintView() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
    }
    
}

