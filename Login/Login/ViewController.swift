//
//  ViewController.swift
//  Login
//
//  Created by Vedant Mistry on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{
            return
        }
        
        if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else{
            segue.destination.navigationItem.title = usernameTextField.text
        }
        
        
    }
    
    
    @IBAction func forgotUsernameAction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: sender)
    }
    
}

