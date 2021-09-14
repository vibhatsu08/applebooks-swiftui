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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

