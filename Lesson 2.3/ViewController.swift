//
//  ViewController.swift
//  Lesson 2.3
//
//  Created by Artem on 3/18/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    private var colorControlsMap: [UISlider: UILabel] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        colorControlsMap = [
            redSlider: redLabel,
            greenSlider: greenLabel,
            blueSlider: blueLabel
        ]
        
        for slider in colorControlsMap.keys {
            updateTitle(for: slider)
        }
        
        updateColorView()
    }

    @IBAction func colorSliderChanged(_ sender: UISlider) {
        updateTitle(for: sender)
        updateColorView()
    }
    
    private func updateTitle(for slider: UISlider) {
        colorControlsMap[slider]?.text = String(format: "%.2f", slider.value)
    }
    
    private func updateColorView() {
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }

}

