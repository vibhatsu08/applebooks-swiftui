//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Vedant Mistry on 21/09/21.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        tabBarItem.badgeValue = nil
    }


}

