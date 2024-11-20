//
//  LiscenceAgreementViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 29/08/1946 Saka.
//


//
//  LicenseAgreementViewController.swift
//  editProfile
//
//  Created by User@Param on 20/11/24.
//
import UIKit
class LicenseAgreementViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize the UI to show the License Agreement
        self.view.backgroundColor = .white
        let agreementLabel = UILabel()
        agreementLabel.translatesAutoresizingMaskIntoConstraints = false
        agreementLabel.text = "This is where the License Agreement content will go."
        agreementLabel.numberOfLines = 0
        agreementLabel.textAlignment = .center
        self.view.addSubview(agreementLabel)
        
        NSLayoutConstraint.activate([
            agreementLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            agreementLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            agreementLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            agreementLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        ])
    }
    
}
