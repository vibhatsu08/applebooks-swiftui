//
//  ViewController.swift
//  TwoButtons
//
//  Created by Vedant Mistry on 15/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        label.text = textField.text
    }
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        label.text = ""
        textField.text = ""
    }
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

