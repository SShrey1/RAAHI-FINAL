//
//  ForgotViewController.swift
//  RaahiShrey
//
//  Created by user@59 on 24/08/1946 Saka.
//

import UIKit

class ForgotViewController: UIViewController {
    
    
    @IBOutlet weak var forgotLabel: UILabel!
    
    
    @IBOutlet weak var text1Label: UILabel!
    
    @IBOutlet weak var text2Label: UILabel!
    
    
    @IBOutlet weak var enterText: UITextField!
    
    
    @IBOutlet weak var continueButt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func buttTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "otp", sender: sender)
    }
}
