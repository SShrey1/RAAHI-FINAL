//
//  SignUpViewController.swift
//  RaahiShrey
//
//  Created by user@59 on 28/10/24.
//

import UIKit
import LocalAuthentication

class SignInViewController: UIViewController {

    
    @IBOutlet weak var HelloLabel: UILabel!
    
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    @IBOutlet weak var UsernameText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    
    
    @IBOutlet weak var ForgotButton: UIButton!
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    @IBOutlet weak var InstantLabel: UILabel!
    
    
    @IBOutlet weak var FaceIDButton: UIButton!
    
    
    @IBOutlet weak var DontLabel: UILabel!
    
    
    @IBOutlet weak var SignInButton: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let faceButton = UIButton(frame : CGRect(x: 20, y: (UIScreen.main.bounds.size.height - 400), width: (UIScreen.main.bounds.width - 40), height: 50))
        
        faceButton.setTitle("Login with Face ID", for: .normal)
        faceButton.backgroundColor = .black
        faceButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        self.view.addSubview(faceButton)
        
    }
    
    @objc func didTapButton() {
        
        let context = LAContext()
        
        var error: NSError? = nil
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            let reason = "Please authorize with touch id!"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics,
                                   localizedReason: reason) { [weak self] success, error in
                DispatchQueue.main.async {
                    guard success, error ==  nil else {
                        let alert = UIAlertController(title: "Failed to Authenticate", message: "Please try again.", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                        self?.present(alert, animated: true)
                        return
                    }
                    
                    let vc = UIViewController()
                    vc.title = "Welcome!"
                    vc.view.backgroundColor = .systemBlue
                    self?.present(UINavigationController(rootViewController: vc), animated : true, completion: nil)
                    
                }
            }
        }
        
        else{
            let alert = UIAlertController(title: "Unavilable", message: "You cannot use this feature.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            present(alert, animated: true)
            
        }
    }
    
    
    
    @IBAction func ForgotTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "Forgot", sender: sender)
    }
    
    @IBAction func SignUpTapped(_ sender: Any) {
    }
    
    
    @IBAction func FaceIDTapped(_ sender: Any) {
    }
    
    
    @IBAction func SignInTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "SignUp", sender: sender)
        
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
