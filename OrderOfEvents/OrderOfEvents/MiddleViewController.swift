//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Vedant Mistry on 22/09/21.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var middleViewLabel: UILabel!
    var eventNumber = 1
    
    func addEvent(from: String){
        if let newMiddleViewLabel = middleViewLabel.text{
            middleViewLabel.text = "\(newMiddleViewLabel)\nEvent Number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
