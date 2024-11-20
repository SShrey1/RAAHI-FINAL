//
//  AddInterestsViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 22/08/1946 Saka.
//

import UIKit


class AddInterestsViewController: UIViewController {
    
    
    @IBOutlet weak var InterestsLabel: UILabel!
    
    @IBOutlet weak var Attraction: UIButton!
    
    
    @IBOutlet weak var Historical: UIButton!
    
    @IBOutlet weak var Food: UIButton!
    
    @IBOutlet weak var theme: UIButton!
    
    @IBOutlet weak var Unesco: UIButton!
    
    @IBOutlet weak var Private: UIButton!
    
    @IBOutlet weak var boating: UIButton!
    
    @IBOutlet weak var villas: UIButton!
    
    @IBOutlet weak var museums: UIButton!
    
    @IBOutlet weak var kayaking: UIButton!
    
    
    @IBOutlet weak var scuba: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Attraction.layer.cornerRadius = 20
        Attraction.clipsToBounds = true
        
        Historical.layer.cornerRadius = 20
        Historical.clipsToBounds = true
        
        Food.layer.cornerRadius = 20
        Food.clipsToBounds = true
        
        theme.layer.cornerRadius = 20
        theme.clipsToBounds = true
        
        Unesco.layer.cornerRadius = 20
        Unesco.clipsToBounds = true
        
        Private.layer.cornerRadius = 20
        Private.clipsToBounds = true
        
        boating.layer.cornerRadius = 20
        boating.clipsToBounds = true
        
        villas.layer.cornerRadius = 20
        villas.clipsToBounds = true
        
        museums.layer.cornerRadius = 20
        museums.clipsToBounds = true
        
        kayaking.layer.cornerRadius = 20
        kayaking.clipsToBounds = true
        
        scuba.layer.cornerRadius = 20
        scuba.clipsToBounds = true
        
    }
    
    @IBAction func BeachesTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            sender.backgroundColor = .systemBlue
            sender.setTitleColor(UIColor.white, for: .normal)
            
        } else {
            sender.backgroundColor = .white
                    sender.setTitleColor(UIColor.black, for: .normal)
        }
        
    }
}
