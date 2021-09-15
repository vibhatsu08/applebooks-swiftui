//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Vedant Mistry on 15/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: UIButton){
        print("button was tapped")
        
        if toggle.isOn {
            print("button is on!")
        }
        else{
            print("button is off!")
        }
        
        print("The slider is set to a value of \(slider.value)")
        
    }
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("switch is on!")
        }
        else {
            print("switch is off")
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let touchLocation = sender.location(in: view)
        print(touchLocation)
    }
    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTapped(_:)),
           for: .touchUpInside)
    }


}

