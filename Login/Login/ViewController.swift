//
//  ViewController.swift
//  Login
//
//  Created by Vedant Mistry on 19/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    
    @IBAction func forgotUsernameButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "loginPageSegue", sender: sender)
    }
    @IBAction func forgotPasswordButtonAction(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return
        }
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = usernameTextField.text
        }
        
    }
    
}

