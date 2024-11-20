//
//  NewPassViewController.swift
//  RaahiShrey
//
//  Created by user@59 on 24/08/1946 Saka.
//

import UIKit

class NewPassViewController: UIViewController {
    
    
    @IBOutlet weak var newlabel: UILabel!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var newpassText: UITextField!
    
    
    @IBOutlet weak var retypeText: UITextField!
    
    
    @IBOutlet weak var finishButt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func ButtTapped(_ sender: Any) {
        performSegue(withIdentifier: "backtosignin", sender: sender)
    }
}
